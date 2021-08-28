#include <proc.h>

#define MAX_NR_PROC 4

extern void naive_uload(PCB *pcb, const char *filename);

static PCB pcb[MAX_NR_PROC] __attribute__((used)) = {};
static PCB pcb_boot = {};
PCB *current = NULL;
void context_kload(PCB *pcb, void *fun, void *unknow);

void switch_boot_pcb()
{
  current = &pcb_boot;
}

void hello_fun(void *arg)
{
  int j = 1;
  while (1)
  {
    Log("Hello World from Nanos-lite with arg '%p' for the %dth time!", (uintptr_t)arg, j);
    j++;
    yield();
  }
}

void init_proc()
{
  context_kload(&pcb[0], hello_fun, NULL);

  switch_boot_pcb();

  Log("Initializing processes...");

  naive_uload(NULL, "/bin/bmp-test");
}

Context *schedule(Context *prev)
{
  current->cp = prev;

  // always select pcb[0] as the new process
  current = &pcb[0];

  // then return the new context
  return current->cp;
}

void context_kload(PCB *pcb, void *fun, void *unknow)
{

  printf("stack start %x\n", &pcb->stack);
  printf("stack end %x\n", &pcb->stack + STACK_SIZE);

#define STACK_FRAME RANGE(&pcb->stack, &pcb->stack + STACK_SIZE)

  current->cp = kcontext(STACK_FRAME, fun, unknow);
}
