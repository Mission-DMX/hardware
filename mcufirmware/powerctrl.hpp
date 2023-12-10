#ifndef POWERCTRL_HPP
#define POWERCTRL_HPP

#include <Arduino.h>

#define PIN_RELAIS_XTOUCH 10 // 230V Relais enabling Xtouch
#define PIN_RELAIS_IO_12V 11 // 12V  Relais enabling 12V Rail on Mainboard (macro keys etc)
#define PIN_RELAIS_IO_3V 12  // 3.3V Relais enabling logic chips on Mainboard

// Pin A4 is currently unused
#define PIN_VOLTAGE_SENSING A5

void setup_powerctrl();

#endif
