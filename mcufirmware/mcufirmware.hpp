#ifndef MCUFIRMWARE_HPP
#define MCUFIRMWARE_HPP

#include "keyscanning.hpp"

#define PIN_STATUS_LED 13
#define PIN_RELAIS_XTOUCH 10 // 230V Relais enabling Xtouch
#define PIN_RELAIS_IO_12V 11 // 12V  Relais enabling 12V Rail on Mainboard (macro keys etc)
#define PIN_RELAIS_IO_3V 12  // 3.3V Relais enabling logic chips on Mainboard

// Pins 2-9 are used by key matrix

// Pins 0-1 are reserved for future UART application (maybe uart pass-through for further controller?)
// Pins A0-A5 are reserved for voltage sensing

#endif
