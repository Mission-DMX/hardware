#include "powerctrl.hpp"

void setup_powerctrl() {
  pinMode(PIN_VOLTAGE_SENSING, INPUT);
  pinMode(PIN_RELAIS_XTOUCH, OUTPUT);
  pinMode(PIN_RELAIS_IO_12V, OUTPUT);
  pinMode(PIN_RELAIS_IO_3V, OUTPUT);
}
