#ifdef KEYSCANNING_HPP
#define KEYSCANNING_HPP

#define KEYMATRIX_SIZE 4
#define KEYMATRIX_ROW_PINS {2,3,4,5}
#define KEYMATRIX_COL_PINS {6,7,8,9}
#define KEYMATRIX_MAPPING  {'7','8','9','+','4','5','6','-','1','2','3','*',',','0','@','/'}

void setup_keyboard_matrix();
void scan_keyboard();

#endif
