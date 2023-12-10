#include "mcufirmware.hpp"

#include "keyscanning.hpp"
#include "powerctrl.hpp"

// TODO implement keyboard scan matrix, hid interface and serial based power control
// Keyboard leds shall be handled by the fpga

void setup() {
  pinMode(PIN_STATUS_LED, OUTPUT);
  digitalWrite(PIN_STATUS_LED, HIGH);
  
  Serial.begin(9600);
  while(!Serial){};
  Serial.println("#Boot process started.");
  
  setup_hid();
  setup_powerctrl();
  Serial.println("#Boot process finished. Accepting power commands now.\n#Documentation of available commands is listed within the Docs repo.");
  digitalWrite(PIN_STATUS_LED, LOW);
}

void loop() {
  scan_hid();
}
