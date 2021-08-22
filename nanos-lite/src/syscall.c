#include <common.h>
#include "syscall.h"

static inline int sys_write(int fd, const void *buf, size_t count)
{
  if (fd == 1 || fd == 2)
  {
    char *cbuf = (char *)buf;
    for (int i = 0; i < count; ++i)
    {
      putch(*(cbuf + i));
    }
    return count;
  }
  else
    return -1;
}

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
    c->GPRx = sys_write(c->GPR2, (void *)c->GPR3, c->GPR4);
    break;
  case SYS_brk:
    c->GPRx =sys_brk(c->GPR2);
    break;

  default:
    panic("Unhandled syscall ID = %d", a[0]);
  }
}
