#include <am.h>
#include <nemu.h>
#include <klib.h>

static Context *(*user_handler)(Event, Context *) = NULL;

Context *__am_irq_handle(Context *c)
{
  if (user_handler)
  {
    Event ev = {0};
    // switch (*(uintptr_t*)(c->pdir))
    switch (c->epc)
    {
      case 1:
      printf("test1\n");
      break;
    default:
      ev.event = EVENT_ERROR;
      break;
    }

    c = user_handler(ev, c);
    assert(c != NULL);
  }

  return c;
}

extern void __am_asm_trap(void);

bool cte_init(Context *(*handler)(Event, Context *))
{
  // initialize exception entry
  asm volatile("csrw stvec, %0"
               :
               : "r"(__am_asm_trap));

  // register event handler
  user_handler = handler;

  return true;
}

Context *kcontext(Area kstack, void (*entry)(void *), void *arg)
{
  return NULL;
}

void yield()
{
  asm volatile("li a7, -1; ecall");
}

bool ienabled()
{
  return false;
}

void iset(bool enable)
{
}
