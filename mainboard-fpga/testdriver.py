#! /usr/bin/env python3

import serial
from time import sleep
import random

#ser = serial.Serial(
#    port="/dev/serial/by-id/usb-Alchitry_Alchitry_Au_FT4ZS6I3-if00-port0",
#    #port="/dev/ttyUSB0",
#    baudrate=1000000,
#    timeout=1
#)

import pyftdi.serialext

ser = pyftdi.serialext.serial_for_url('ftdi://ftdi:2232h/2', baudrate=1000000)

def reset_dmx_interface() -> None:
    ser.write(bytes([0b00111111,0b00111111,0b00111111,0b00111111]))
    ser.flush()
    sleep(0.1)
    print("Reset done.")
    ser.write(bytes([0b00111100, 0b01000000, 0b01000000, 0b01000000, 0b01000001]))
    ser.flush()
    print("Port 0 enabled")

def write_dmx_universe(port: int, data: list[int]) -> None:
    b_arr = [
        0b00111110, # Write DMX message
	0b01000000 | ((port >> 6) & 0b00111111),
	0b01000000 | (port & 0b00111111),
	0b01000000 | ((len(data) >> 6) & 0b00111111),
	0b01000000 | (len(data) & 0b00111111)
    ]
    for current_value in data:
	b_arr.append(0b01000000 | ((current_value >> 4) & 0b00001111))
	b_arr.append(0b01000000 | (current_value & 0b00001111))
    ser.write(bytes(b_arr))
    ser.flush()

reset_dmx_interface()

test_univ = [0, 255, 255, 255, 255, 0, 0, 0, 255, 0]

write_dmx_universe(0, test_univ)

ser.close()
