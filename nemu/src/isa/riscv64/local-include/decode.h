#include <cpu/exec.h>
#include "rtl.h"

// decode operand helper
#define def_DopHelper(name) \
  void concat(decode_op_, name)(DecodeExecState * s, Operand * op, word_t val, bool load_val)

static inline def_DopHelper(i)
{
  op->type = OP_TYPE_IMM;
  op->imm = val;

  print_Dop(op->str, OP_STR_SIZE, "%ld", op->imm);
}

static inline def_DopHelper(r)
{
  op->type = OP_TYPE_REG;
  op->reg = val;
  op->preg = &reg_d(val);

  print_Dop(op->str, OP_STR_SIZE, "%s", reg_name(op->reg));
}

static inline def_DopHelper(csr)
{
  printf("csr index 0x%lx\n",(word_t)s->isa.instr.csr.csr);
  printf("csr val 0x%lx\n",*(id_src2->preg));
  printf("pc 0x%lx\n",s->seq_pc);

  // assert(val==0x105 || val==0x0 || val==0x41 || val==0x42);
  assert(val==0x105 || val==0x0 || val==0x142 || val==0x100);

  op->type = OP_TYPE_REG;
  op->reg = val;

  if(val==0x100){
    op->preg = &cpu.csr[0]._64;
    print_Dop(op->str, OP_STR_SIZE, "%s", "sstatus");
  }
  else if(val==0x105){
    op->preg = &cpu.csr[3]._64;
    print_Dop(op->str, OP_STR_SIZE, "%s", "stvec");
  }

  else if(val==0x142){
    op->preg = &cpu.csr[2]._64;
    print_Dop(op->str, OP_STR_SIZE, "%s", "scause");
  }

  

}

static inline def_DHelper(I)
{
  decode_op_r(s, id_src1, s->isa.instr.i.rs1, true);
  decode_op_i(s, id_src2, (sword_t)s->isa.instr.i.simm11_0, true);
  decode_op_r(s, id_dest, s->isa.instr.i.rd, false);
}

static inline def_DHelper(R)
{
  decode_op_r(s, id_src1, s->isa.instr.r.rs1, true);
  decode_op_r(s, id_src2, s->isa.instr.r.rs2, true);
  decode_op_r(s, id_dest, s->isa.instr.r.rd, false);
}

static inline def_DHelper(U)
{
  decode_op_i(s, id_src1, (sword_t)s->isa.instr.u.simm31_12 << 12, true);
  decode_op_r(s, id_dest, s->isa.instr.u.rd, false);

  print_Dop(id_src1->str, OP_STR_SIZE, "0x%x", s->isa.instr.u.simm31_12);
}

static inline def_DHelper(S)
{
  decode_op_r(s, id_src1, s->isa.instr.s.rs1, true);
  sword_t simm = (s->isa.instr.s.simm11_5 << 5) | s->isa.instr.s.imm4_0;
  decode_op_i(s, id_src2, simm, true);
  decode_op_r(s, id_dest, s->isa.instr.s.rs2, true);
}

// int32_t simm19_12 : 8;
// int32_t simm11 : 1;
// int32_t simm10_1 : 10;
// int32_t simm20 : 1;
static inline def_DHelper(J)
{
  decode_op_r(s, id_dest, s->isa.instr.j.rd, false);
  // simm = s->isa.instr.j.simm20 << 19 | s->isa.instr.j.simm19_12 << 11 | s->isa.instr.j.simm11 << 10 | s->isa.instr.j.simm10_1;
  // uint32_t imm = ((s->isa.instr.j.imm20 << 19) | (s->isa.instr.j.imm19_12 << 11) | (s->isa.instr.j.imm11 << 10) | (s->isa.instr.j.imm10_1)) << 1;
  // if (s->isa.instr.j.imm20)
  //   imm = imm | (0xFFFFFFFF << 21);
  // sword_t simm = (sword_t)(int32_t)imm;
  sword_t simm = ((s->isa.instr.j.simm20 << 19) | (s->isa.instr.j.imm19_12 << 11) | (s->isa.instr.j.imm11 << 10) | (s->isa.instr.j.imm10_1)) << 1;
  decode_op_i(s, id_src1, simm, true);

  // sword_t simm = s->isa.instr.j.simm20 << 19 | s->isa.instr.j.simm19_12 << 11 | s->isa.instr.j.simm11 << 10 | s->isa.instr.j.simm10_1;
  // simm = simm << 1;
  // decode_op_i(s, id_src1, simm, true);
}

static inline def_DHelper(B)
{
  decode_op_r(s, id_src1, s->isa.instr.b.rs1, true);
  // uint32_t imm = ((s->isa.instr.b.imm12 << 11) | (s->isa.instr.b.imm11 << 10) | (s->isa.instr.b.imm10_5 << 4) | (s->isa.instr.b.imm4_1)) << 1;
  // if (s->isa.instr.b.imm12)
  //   imm = imm | (0xFFFFFFFF << 13);
  // sword_t simm = (sword_t)(int32_t)imm;
  sword_t simm = ((s->isa.instr.b.simm12 << 11) | (s->isa.instr.b.imm11 << 10) | (s->isa.instr.b.imm10_5 << 4) | (s->isa.instr.b.imm4_1)) << 1;
  decode_op_i(s, id_src2, simm, true);
  decode_op_r(s, id_dest, s->isa.instr.b.rs2, true);
}

static inline def_DHelper(CSR)
{
  decode_op_r(s, id_src1, s->isa.instr.csr.rs1, false);
  decode_op_r(s, id_dest, s->isa.instr.i.rd, false);
  decode_op_csr(s, id_src2, (word_t)s->isa.instr.csr.csr, false);
  

}
