#include <common.h>
#include "syscall.h"
void do_syscall(Context *c)
{
  uintptr_t a[4];
  a[0] = c->GPR1;
  printf("SYSCALL %d\n", a[0]);
  switch (a[0])
  {
  case -1:
    printf("yield\n");
    break;
  case SYS_exit:

    printf("ret value 0x%x\n", c->GPRx);

    halt(c->GPRx);
  // case SYS_exit:
  // break;
  case SYS_yield:
    // printf("id %d\n", a[0]);
    yield();
    c->GPRx = 0;
    break;

  default:
    panic("Unhandled syscall ID = %d", a[0]);
  }

  // uintptr_t ret = c->GPRx;

  // printf("ret value 0x%x\n", ret);

  // halt(ret);
}
