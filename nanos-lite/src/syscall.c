#include <common.h>
#include "syscall.h"
void do_syscall(Context *c)
{
  uintptr_t a[4];
  a[0] = c->GPR1;


  switch (a[0])
  {
  // case SYS_exit:
  // break;
  case SYS_yield:
    // printf("id %d\n", a[0]);
    yield();
    break;

  default:
    panic("Unhandled syscall ID = %d", a[0]);
  }

  uintptr_t ret = c->GPRx;

  printf("ret value 0x%x\n",ret);

    halt(ret);
}
