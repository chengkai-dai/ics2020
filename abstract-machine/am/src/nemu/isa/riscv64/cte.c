#include <am.h>
#include <nemu.h>
#include <klib.h>

static Context *(*user_handler)(Event, Context *) = NULL;

Context *__am_irq_handle(Context *c)
{
  if (user_handler)
  {
    Event ev = {0};
    switch (c->cause)
    {

    case 1:
      ev.event = EVENT_SYSCALL;
      break;
    case 2:
      ev.event = EVENT_YIELD;
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
  // Context *c = (Context *)kstack.end - 1;

    Context *c =  (Context *)((uint8_t *)(kstack.end) - sizeof(Context) - 30);

  printf("c location %x\n",c);
  printf("c location end %x\n",(uintptr_t)c+sizeof(Context));

  c->epc = (uintptr_t)entry;

  c->GPR2 = (uintptr_t)arg;

  return c;
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
