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
    printf("c->GPRx 0x%x\n",c->GPRx);
    printf("exit\n");
    halt(c->GPRx);
    break;
  case SYS_yield:
    yield();
    c->GPRx = 0;
    break;
  case SYS_write:
    break;

  default:
    panic("Unhandled syscall ID = %d", a[0]);
  }

}
