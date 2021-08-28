#include <proc.h>

#define MAX_NR_PROC 4

extern void naive_uload(PCB *pcb, const char *filename);

static PCB pcb[MAX_NR_PROC] __attribute__((used)) = {};
static PCB pcb_boot = {};
PCB *current = NULL;
void context_kload(PCB *pcb, void *fun, void *args);

void switch_boot_pcb()
{
  current = &pcb_boot;
}

void hello_fun(void *arg)
{
  int j = 1;
  while (1)
  {
    Log("Hello World from Nanos-lite with arg '%s' for the %dth time!", (uintptr_t)arg, j);
    j++;
    yield();
  }
}

void init_proc()
{
  switch_boot_pcb();

  context_kload(&pcb[0], hello_fun, (void *)"t1");

  context_kload(&pcb[1], hello_fun, (void *)"t2");

printf("pcb[1] %x\n",(PCB*)(&pcb[1])->cp->epc);
printf("pcb[0] %x\n",(PCB*)(&pcb[0])->cp->epc);

  Log("Initializing processes...");

  naive_uload(NULL, "/bin/dummy");
}

Context *schedule(Context *prev)
{
  current->cp = prev;

  current = (current == &pcb[0] ? &pcb[1] : &pcb[0]);
printf("current->cp %x\n",current->cp->epc);

  // then return the new context
  return current->cp;
}

void context_kload(PCB *pcb, void *fun, void *args)
{
#define STACK_FRAME RANGE((uint64_t)&pcb->stack,  (uint64_t)(&pcb->stack) + STACK_SIZE)

  pcb->cp = kcontext(STACK_FRAME, fun, args);

}
