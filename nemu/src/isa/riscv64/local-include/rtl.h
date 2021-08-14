#ifndef __RISCV64_RTL_H__
#define __RISCV64_RTL_H__

#include <rtl/rtl.h>
#include "reg.h"

// no isa-dependent rtl instructions
static inline def_rtl(auipc, rtlreg_t *dest, const sword_t imm)
{
  *dest = imm + s->seq_pc - 4;
}

static inline def_rtl(jal, rtlreg_t *dest, const sword_t imm)
{
  *dest = s->seq_pc;
  rtl_j(s, imm + s->seq_pc - 4);
}

static inline def_rtl(jalr, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  vaddr_t target = (instr_sign_ext(imm) + *src1) & (~1);
  *dest = s->seq_pc;
  rtl_j(s, target);
}

#endif
