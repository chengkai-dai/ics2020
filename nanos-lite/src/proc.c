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
  printf("t1->t0 %x\n",pcb[0].cp->GPR2);

  context_kload(&pcb[1], hello_fun, (void *)"t2");
  printf("t2->t0 %x\n",pcb[1].cp->GPR2);

  Log("Initializing processes...");

  naive_uload(NULL, "/bin/dummy");
}

Context *schedule(Context *prev)
{
  current->cp = prev;
  printf("schedule start\n");

  // always select pcb[0] as the new process
  current = (current == &pcb[0] ? &pcb[1] : &pcb[0]);
  printf("current->t0 %x\n",current->cp->GPR2);
  // printf("current->epc %x\n",current->cp->epc);

  printf("schedule end\n");

  // then return the new context
  return current->cp;
}

void context_kload(PCB *pcb, void *fun, void *args)
{
#define STACK_FRAME RANGE((uint64_t)&pcb->stack,  (uint64_t)(&pcb->stack) + STACK_SIZE)

  pcb->cp = kcontext(STACK_FRAME, fun, args);

}
