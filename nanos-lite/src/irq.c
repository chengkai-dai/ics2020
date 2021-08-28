#include <common.h>
#include "syscall.h"
extern Context *schedule(Context *prev);

extern void do_syscall(Context *c);

static Context *do_event(Event e, Context *c)
{
    printf("kcontext c->epc %x\n",c->epc);

  switch (e.event)
  {

  case EVENT_YIELD:

    c=schedule(c);
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
