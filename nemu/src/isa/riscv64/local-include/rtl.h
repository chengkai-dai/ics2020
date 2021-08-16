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

//SLTI (set less than immediate) places the value 1 in register rd if register rs1 is less than the signextended
//immediate when both are treated as signed numbers, else 0 is written to rd. SLTIU is
//similar but compares the values as unsigned numbers (i.e., the immediate is first sign-extended to
//XLEN bits then treated as an unsigned number). Note, SLTIU rd, rs1, 1 sets rd to 1 if rs1 equals
//zero, otherwise sets rd to 0 (assembler pseudoinstruction SEQZ rd, rs).

static inline def_rtl(sltiu, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if (*src1 < (word_t)(instr_sign_ext(imm)))
    *dest = 1;
  else
    *dest = 0;
}

static inline def_rtl(sltu, rtlreg_t *dest, const rtlreg_t *src1, const rtlreg_t *src2)
{
  if (*src1 < (word_t)(*src2))
    *dest = 1;
  else
    *dest = 0;
}

static inline def_rtl(slti, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if ((sword_t)*src1 < imm)
    *dest = 1;
  else
    *dest = 0;
}

static inline def_rtl(slt, rtlreg_t *dest, const rtlreg_t *src1, const rtlreg_t *src2)
{
  if ((sword_t)*src1 < (sword_t)(*src2))
    *dest = 1;
  else
    *dest = 0;
}


static inline def_rtl(beq, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if ((sword_t)*src1 == (sword_t)*dest)
  {
    rtl_j(s, imm + s->seq_pc - 4);
  }

}

static inline def_rtl(bne, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if ((sword_t)*src1 != (sword_t)*dest)
  {
    rtl_j(s, imm + s->seq_pc - 4);
  }

}

static inline def_rtl(bge, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if ((sword_t)*src1 >= (sword_t)*dest)
  {
    rtl_j(s, imm + s->seq_pc - 4);
  }

}

static inline def_rtl(blt, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if ((sword_t)*src1 < (sword_t)*dest)
  {
    rtl_j(s, imm + s->seq_pc - 4);
  }

}

static inline def_rtl(bltu, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if (*src1 < *dest)
  {
    rtl_j(s, imm + s->seq_pc - 4);
  }

}
#endif
