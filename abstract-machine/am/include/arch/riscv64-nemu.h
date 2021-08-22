#ifndef ARCH_H__
#define ARCH_H__

struct Context
{

  uintptr_t gpr[32];
  uintptr_t cause;
  uintptr_t status;
  uintptr_t epc;
  void *pdir;
};

//# define ARGS_ARRAY ("ecall", "a7", "a0", "a1", "a2", "a0")
//asm volatile (SYSCALL : "=r" (ret) : "r"(_gpr1), "r"(_gpr2), "r"(_gpr3), "r"(_gpr4));
#define GPR1 gpr[17] // a7
#define GPR2 gpr[10] // a0
#define GPR3 gpr[11] // a1
#define GPR4 gpr[12] // a2
#define GPRx gpr[10] // a0

#endif
