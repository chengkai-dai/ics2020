#include <am.h>
#include <nemu.h>
#include "klib.h"

#define KEYDOWN_MASK 0x8000

void __am_input_keybrd(AM_INPUT_KEYBRD_T *kbd)
{

  // uint16_t status = inw(KBD_ADDR + 4);
  uint32_t keycode = inw(KBD_ADDR);
  printf("keycode %d\n",keycode);

  if (keycode == AM_KEY_NONE)
  {
    kbd->keydown = false;
    kbd->keycode = AM_KEY_NONE;
  }
  else
  {
    kbd->keydown = true;
    kbd->keycode = keycode | KEYDOWN_MASK;
  }
}
