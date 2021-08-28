#include <common.h>
#include "syscall.h"
extern Context *schedule(Context *prev);

extern void do_syscall(Context *c);

static Context *do_event(Event e, Context *c)
{

  switch (e.event)
  {

  case EVENT_YIELD:

    c=schedule(c);
    printf("c->t0 %x\n",c->GPR2);
    break;
  case EVENT_SYSCALL:
    do_syscall(c);
    break;
  default:
    panic("Unhandled event ID = %d", e.event);
  }

  return c;
}

void init_irq(void)
{
  Log("Initializing interrupt/exception handler...");
  cte_init(do_event);
}
