#include <cpu/exec.h>
#include "local-include/rtl.h"

void raise_intr(DecodeExecState *s, word_t NO, vaddr_t epc)
{
  /* TODO: Trigger an interrupt/exception with ``NO''.
   * That is, use ``NO'' to index the IDT.
   */

  //1.将当前PC值保存到sepc寄存器
  //2.在scause寄存器中设置异常号
  //3.从stvec寄存器中取出异常入口地址
  //4.跳转到异常入口地址
  // cpu.csr[2]=NO;
  // cpu.csr[1]=cpu.pc;
  // s->seq_pc = cpu.csr[1]._64 + NO * sizeof(vaddr_t);
}

void query_intr(DecodeExecState *s)
{
}
