#ifndef KEYSCANNING_HPP
#define KEYSCANNING_HPP

#define KEYMATRIX_SIZE 4

// {2,3,4,5}
#define KEYMATRIX_ROW_PINS_BASE 2
#define KEYMATRIX_ROW_PINS_COUNT 4

// {6,7,8,9}
#define KEYMATRIX_COL_PINS_BASE 6
#define KEYMATRIX_COL_PINS_COUNT 4

#define KEYMATRIX_MAPPING  {'7','8','9','+','4','5','6','-','1','2','3','*',',','0','@','/'}

#define JOYSTICK_PIN_X   A0
#define JOYSTICK_PIN_Y   A1
#define JOYSTICK_PIN_Z   A2
#define JOYSTICK_PIN_BTN A3

void setup_hid();
void scan_hid();

void setup_keyboard_matrix();
void scan_keyboard();

void setup_joystick();
void scan_joystick();

#endif
