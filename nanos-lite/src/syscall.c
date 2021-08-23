#include <common.h>
#include "syscall.h"
#include "fs.h"

static inline int sys_brk(int addr)
{
  return 0;
}

void do_syscall(Context *c)
{
  uintptr_t a[4];
  a[0] = c->GPR1;
  // printf("SYSCALL %d\n", a[0]);
  switch (a[0])
  {
  case -1:
    printf("yield\n");
    break;
  case SYS_exit:
    halt(c->GPRx);
    break;
  case SYS_yield:
    yield();
    c->GPRx = 0;
    break;
  case SYS_write:
    c->GPRx = fs_write(c->GPR2, (void *)c->GPR3, c->GPR4);
    break;
  case SYS_read:
    c->GPRx = fs_read(c->GPR2, (void *)c->GPR3, c->GPR4);
    break;
  case SYS_open:
    c->GPRx = fs_open((char *)c->GPR2, c->GPR3, c->GPR4);
    break;
  case SYS_close:
    c->GPRx = fs_close(c->GPR2);
    break;
  case SYS_lseek:
    c->GPRx = fs_lseek(c->GPR2, c->GPR3, c->GPR4);
    break;
  case SYS_brk:
    c->GPRx = sys_brk(c->GPR2);
    break;

  default:
    panic("Unhandled syscall ID = %d", a[0]);
  }
}
