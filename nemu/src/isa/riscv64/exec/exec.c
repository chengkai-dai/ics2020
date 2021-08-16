#include <cpu/exec.h>
#include "../local-include/decode.h"
#include "all-instr.h"

static inline void set_width(DecodeExecState *s, int width)
{
  if (width != 0)
    s->width = width;
}

static inline def_EHelper(load)
{
  switch (s->isa.instr.i.funct3)
  {
    EXW(3, ld, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(auipc)
{
  rtl_auipc(s, ddest, id_src1->imm);
  print_asm_template2(auipc);
}

static inline def_EHelper(jal)
{
  rtl_jal(s, ddest, id_src1->imm);
  print_asm_template2(jal);
}

static inline def_EHelper(jalr)
{
  rtl_jalr(s, ddest, dsrc1, id_src2->imm);
  print_asm_template3(jalr);
}

static inline def_EHelper(store)
{
  switch (s->isa.instr.s.funct3)
  {
    EXW(3, st, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(branch)
{
  switch (s->isa.instr.b.funct3)
  {
    EXW(0, beq, 8)
    EXW(1, bne, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(op_imm)
{
  switch (s->isa.instr.i.funct3)
  {
    EXW(0, addi, 8)
    EXW(3, sltiu, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(op_r)
{
  printf("s->isa.instr.r.funct7 0x%x\n",s->isa.instr.r.funct7);
  assert(s->isa.instr.r.funct7 == 0 || s->isa.instr.r.funct7 == 0x100000);
  switch (s->isa.instr.r.funct3)
  {
    EXW(0, add_sub, 8)
  default:
    exec_inv(s);
  }
}

static inline void fetch_decode_exec(DecodeExecState *s)
{
  s->isa.instr.val = instr_fetch(&s->seq_pc, 4);
  Assert(s->isa.instr.i.opcode1_0 == 0x3, "Invalid instruction");
  switch (s->isa.instr.i.opcode6_2)
  {
    IDEX(0b00000, I, load)
    IDEX(0b01000, S, store)
    IDEX(0b01101, U, lui)
    IDEX(0b00101, U, auipc)
    IDEX(0b00100, I, op_imm)
    IDEX(0b01100, R, op_r)
    IDEX(0b11000, B, branch)
    IDEX(0b11001, I, jalr)
    IDEX(0b11011, J, jal)
    EX(0b11010, nemu_trap)
  default:
    exec_inv(s);
  }
}

static inline void reset_zero()
{
  reg_d(0) = 0;
}

vaddr_t isa_exec_once()
{
  DecodeExecState s;
  s.is_jmp = 0;
  s.seq_pc = cpu.pc;

  fetch_decode_exec(&s);
  update_pc(&s);

  reset_zero();

  return s.seq_pc;
}
