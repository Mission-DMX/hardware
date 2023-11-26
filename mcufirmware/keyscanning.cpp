#include "keyscanning.hpp"

#include <KeyboardLayout.h>
#include <Keyboard_de_DE.h>
#include <Keyboard.h>

#include <array>

std::array<bool, 16> pressed_buttons;

void setup_keyboard_matrix() {
  for(auto& b : pressed_buttons) {
    b = false;
  }
  
  Keyboard.begin();
  Keyboard.releaseAll();
  for(auto pin : KEYMATRIX_ROW_PINS) {
    pinMode(pin, INPUT);
  }
  for(auto pin : KEYMATRIX_COL_PINS) {
    pinMode(pin, INPUT_PULLUP);
  }
}

void scan_keyboard() {
  const byte cols[] = KEYMATRIX_COL_PINS;
  const byte rows[] = KEYMATRIX_ROW_PINS;
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
