#! /usr/bin/env python3
# Copyright Leon Dietrich
# SPDX-License-Identifier: GPL-3.0-or-later

import pyvisa
rm = pyvisa.ResourceManager()

class PowerSupply:
    def __init__(self, port):
        if isinstance(port, str):
            self.inst = rm.open_resource(":TCPIP0::{}::INSTR".format(port))
        else:
            self.inst = port

    def set_voltage(self, channel, volts):
        self.inst.write(":SOURce{}:VOLTage {}".format(channel, volts))

    def set_current(self, channel, amps):
        self.inst.write(":SOURce{}:CURRent {}".format(channel, amps))

for instrument_id in rm.list_resources():
    instrument = rm.open_resource(instrument_id)
    if instrument.query("*IDN?").startswith("RIGOL TECHNOLOGIES,DP832"):
        power_supply = PowerSupply(instrument)
        break

power_supply.set_voltage(1, 12.0)
power_supply.set_voltage(2, 4.9)
power_supply.set_voltage(3, 3.30)

for i in [1, 2, 3]:
    power_supply.set_current(i, 1.5)

