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
    // EXW(3, ld, 8)
    EXW(0, lds, 1)
    EXW(1, lds, 2)
    EXW(2, lds, 4)
    EXW(3, ld, 8)
    EXW(4, ld, 1)
    EXW(5, ld, 2)
    EXW(6, ld, 4)
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
    EXW(0, st, 1)
    EXW(1, st, 2)
    EXW(2, st, 4)
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
    EXW(4, blt, 8)
    EXW(5, bge, 8)
    EXW(6, bltu, 8)
    EXW(7, bgeu, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(op_imm)
{
  switch (s->isa.instr.i.funct3)
  {
    EXW(0, addi, 8)
    EXW(1, shli, 8)
    EXW(3, sltiu, 8)
    EXW(4, xori, 8)
    EXW(5, shri, 8)
    EXW(6, ori, 8)
    EXW(7, andi, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(op_imm_32)
{
  switch (s->isa.instr.i.funct3)
  {
    EXW(0, addiw, 8)
    EXW(1, shliw, 8)
    EXW(5, shriw, 8)
  default:
    exec_inv(s);
  }
}

static inline def_EHelper(op_r_32)
{
  assert(s->isa.instr.r.funct7 == 0 || s->isa.instr.r.funct7 == 0x20 || s->isa.instr.r.funct7 == 0x1);
  if (!(s->isa.instr.r.funct7 == 0x1))
  {
    switch (s->isa.instr.r.funct3)
    {
      EXW(0, add_sub_w, 8)
      EXW(1, shlrw, 8)
      EXW(5, shrrw, 8)
    default:
      exec_inv(s);
    }
  }
  else
  {
    switch (s->isa.instr.r.funct3)
    {
      EXW(0, mulw, 8)
      EXW(4, divw, 8)
      EXW(5, divuw, 8)
      EXW(6, remw, 8)
      EXW(7, remuw, 8)
    default:
      exec_inv(s);
    }
  }
}

static inline def_EHelper(op_r)
{

  assert(s->isa.instr.r.funct7 == 0 || s->isa.instr.r.funct7 == 0x20 || s->isa.instr.r.funct7 == 0x1);
  if (!(s->isa.instr.r.funct7 == 0x1))
  {
    switch (s->isa.instr.r.funct3)
    {
      EXW(0, add_sub, 8)
      EXW(1, sll, 8)
      EXW(2, slt, 8)
      EXW(3, sltu, 8)
      EXW(4, xorr, 8)
      EXW(6, orr, 8)
      EXW(7, andr, 8)
    default:
      exec_inv(s);
    }
  }
  else
  {
    switch (s->isa.instr.r.funct3)
    {
      EXW(0, mul, 8)
      EXW(5, divu, 8)
      EXW(6, rem, 8)
      EXW(7, remu, 8)
    default:
      exec_inv(s);
    }
  }
}

static inline def_EHelper(sys)
{
  switch (s->isa.instr.csr.funct3)
  {
    EXW(0, syscall, 8)
    EXW(1, csrrw, 8)
    EXW(2, csrrs, 8)

  default:
    exec_inv(s);
  }
}

static inline void fetch_decode_exec(DecodeExecState *s)
{
  s->isa.instr.val = instr_fetch(&s->seq_pc, 4);
  // printf("pc %lx\n",cpu.pc);

  Assert(s->isa.instr.i.opcode1_0 == 0x3, "Invalid instruction");
  // printf("s->isa.instr.i.opcode6_2 0x%x\n",s->isa.instr.i.opcode6_2);
  switch (s->isa.instr.i.opcode6_2)
  {
    IDEX(0b00000, I, load)
    IDEX(0b00100, I, op_imm)
    IDEX(0b00101, U, auipc)
    IDEX(0b00110, I, op_imm_32)
    IDEX(0b01000, S, store)
    IDEX(0b01100, R, op_r)
    IDEX(0b01110, R, op_r_32)
    IDEX(0b01101, U, lui)
    IDEX(0b11000, B, branch)
    IDEX(0b11001, I, jalr)
    IDEX(0b11011, J, jal)
    IDEX(0b11100, CSR, sys)
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
  printf("0x%lx\n",cpu.pc);
  DecodeExecState s;
  s.is_jmp = 0;
  s.seq_pc = cpu.pc;


  fetch_decode_exec(&s);

    // printf("before pc 0x%lx\n",cpu.pc);

  update_pc(&s);
    // printf("after pc 0x%lx\n",cpu.pc);

  reset_zero();

  return s.seq_pc;
}
