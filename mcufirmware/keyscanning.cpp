#include "keyscanning.hpp"

#include <KeyboardLayout.h>
#include <Keyboard_de_DE.h>
#include <Keyboard.h>

#include "Joystick.h"

static bool pressed_buttons[16];


void setup_hid() {
  setup_keyboard_matrix();
  setup_joystick();
}

void scan_hid() {
  //scan_keyboard();
  scan_joystick();
}

void setup_keyboard_matrix() {
  for(auto& b : pressed_buttons) {
    b = false;
  }
  
  Keyboard.begin();
  Keyboard.releaseAll();
  for(auto pin = KEYMATRIX_ROW_PINS_BASE; pin <= KEYMATRIX_ROW_PINS_BASE + KEYMATRIX_ROW_PINS_COUNT; pin++) {
    pinMode(pin, INPUT);
  }
  for(auto pin = KEYMATRIX_COL_PINS_BASE; pin <= KEYMATRIX_COL_PINS_BASE + KEYMATRIX_COL_PINS_COUNT; pin++) {
    pinMode(pin, INPUT_PULLUP);
  }
}

void scan_keyboard() {
  const byte cols[] = {6,7,8,9};
  const byte rows[] = {2,3,4,5};
  const byte key_chars[] = KEYMATRIX_MAPPING;
  
  for (int col_index = 0; col_index < KEYMATRIX_SIZE; col_index++) {
    const byte current_column_pin = cols[col_index];
    pinMode(current_column_pin, OUTPUT);
    digitalWrite(current_column_pin, LOW);

    for (int row_index = 0; row_index < KEYMATRIX_SIZE; row_index++) {
      const byte current_row_pin = rows[row_index];
      pinMode(current_row_pin, INPUT_PULLUP);
      const auto read_pin_value = digitalRead(current_row_pin);
      if (read_pin_value != pressed_buttons[KEYMATRIX_SIZE * col_index + row_index]) {
        if (const auto c = key_chars[KEYMATRIX_SIZE * col_index + row_index]; read_pin_value) {
          Keyboard.press(c);
        } else {
          Keyboard.release(c);
        }
        pressed_buttons[KEYMATRIX_SIZE * col_index + row_index] = read_pin_value;
      }
      pinMode(current_row_pin, INPUT);
    }
    pinMode(current_column_pin, INPUT);
  }
}

void setup_joystick() {
  pinMode(JOYSTICK_PIN_X, INPUT);
  pinMode(JOYSTICK_PIN_Y, INPUT);
  pinMode(JOYSTICK_PIN_Z, INPUT);
  pinMode(JOYSTICK_PIN_BTN, INPUT_PULLUP);
  Joystick.begin();
  Joystick.releaseButton(0);
  Joystick.setXAxis(0);
  Joystick.setYAxis(0);
  Joystick.setZAxis(0);
  Joystick.sendState();
}

void scan_joystick() {
  const auto btn_state = digitalRead(JOYSTICK_PIN_BTN);
  const auto x = (analogRead(JOYSTICK_PIN_X) * 16384)/1024+8192;
  const auto y = (analogRead(JOYSTICK_PIN_Y) * 16384)/1024+8192;
  const auto z = (analogRead(JOYSTICK_PIN_Z) * 16384)/1024+8192;
  Joystick.setButton(0, btn_state);
  Joystick.setXAxis(x);
  Joystick.setYAxis(y);
  Joystick.setZAxis(z);
  //Joystick.sendState();
  Serial.print(btn_state);
  Serial.print(' ');
  Serial.print(x);
  Serial.print(' ');
  Serial.print(y);
  Serial.print(' ');
  Serial.println(z);
}
