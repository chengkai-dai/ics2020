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
  vaddr_t target = (imm + *src1) & (~1);

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
  if (*src1 < (word_t)(imm))
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

static inline def_rtl(bgeu, rtlreg_t *dest, const rtlreg_t *src1, const sword_t imm)
{
  if (*src1 >= *dest)
  {
    rtl_j(s, imm + s->seq_pc - 4);
  }
}

static inline def_rtl(csrrw, rtlreg_t *dest, rtlreg_t *src1,  rtlreg_t *src2)
{
  *dest=*src2;
  *src2=*src1;

}

//The CSRRS (Atomic Read and Set Bits in CSR) instruction reads the value of the CSR, zeroextends
//the value to XLEN bits, and writes it to integer register rd. The initial value in integer
//register rs1 is treated as a bit mask that specifies bit positions to be set in the CSR. Any bit that
//is high in rs1 will cause the corresponding bit to be set in the CSR, if that CSR bit is writable.
//Other bits in the CSR are not explicitly written.

static inline def_rtl(csrrs, rtlreg_t *dest, rtlreg_t *src1,  rtlreg_t *src2)
{
  *dest=*src2;
  *src2=*src2 | *src1;
}

#endif
