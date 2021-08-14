#include <cpu/exec.h>
#include "rtl.h"

inline word_t instr_sign_ext(word_t x)
{
#ifdef ISA64
  return (int64_t)x;
#else
  return (int32_t)x;
#endif
}
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

static inline def_DHelper(I)
{
  decode_op_r(s, id_src1, s->isa.instr.i.rs1, true);
  decode_op_i(s, id_src2, (sword_t)s->isa.instr.i.simm11_0, true);
  decode_op_r(s, id_dest, s->isa.instr.i.rd, false);
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
  decode_op_r(s, id_dest, s->isa.instr.j.rd, true);
  sword_t simm = s->isa.instr.j.simm20 << 19 | s->isa.instr.j.simm19_12 << 11 | s->isa.instr.j.simm11 << 10 | s->isa.instr.j.simm10_1;
  simm = instr_sign_ext(simm << 1);
  decode_op_i(s, id_src1, simm, true);
}
