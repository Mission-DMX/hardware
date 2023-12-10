#ifndef MCUFIRMWARE_HPP
#define MCUFIRMWARE_HPP

#define PIN_STATUS_LED 13

// Pins 10-12 are used by the power control system
// Pins 2-9 are used by key matrix, A0-A4 are used by the joystick
// Pins 0-1 are reserved for future UART application (maybe uart pass-through for further controller?)
#define PIN_UART_TX 1
#define PIN_UART_RX 0

// Analog pins A0-A3 are used by the joystick
// Analog pins A4,A5 is used by the power control
// AREF is supplied with 3.3V

#endif
