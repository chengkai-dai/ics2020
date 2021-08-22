#include <common.h>
#include "syscall.h"
void do_syscall(Context *c) {
  uintptr_t a[4];
  a[0] = c->GPR1;
  
  switch (a[0]) {
    // case SYS_exit:
    // break;
    case SYS_yield:
    printf("sys yield\n");
    break;


    default: panic("Unhandled syscall ID = %d", a[0]);
  }
}
