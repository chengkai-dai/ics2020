#include <isa.h>
#include "local-include/reg.h"

const char *regs[] = {
  "$0", "ra", "sp", "gp", "tp", "t0", "t1", "t2",
  "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
  "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7",
  "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
};

void isa_reg_display() {
  printf("zero 0x%lx\n",reg_d(0));
  printf("ra 0x%lx\n",reg_d(1));
  printf("sp 0x%lx\n",reg_d(2));
  printf("gp 0x%lx\n",reg_d(3));
  printf("tp 0x%lx\n",reg_d(4));
  printf("t0 0x%lx\n",reg_d(5));
  printf("t1 0x%lx\n",reg_d(6));
  printf("t2 0x%lx\n",reg_d(7));
  printf("s0 0x%lx\n",reg_d(8));
  printf("s1 0x%lx\n",reg_d(9));
  printf("a0 0x%lx\n",reg_d(10));
  printf("a1 0x%lx\n",reg_d(11));
  printf("a2 0x%lx\n",reg_d(12));
  printf("a3 0x%lx\n",reg_d(13));
  printf("a4 0x%lx\n",reg_d(14));
  printf("a6 0x%lx\n",reg_d(15));
  printf("a7 0x%lx\n",reg_d(16));
  printf("a7 0x%lx\n",reg_d(17));
  printf("s2 0x%lx\n",reg_d(18));
  printf("s3 0x%lx\n",reg_d(19));
  printf("s4 0x%lx\n",reg_d(20));
  printf("s5 0x%lx\n",reg_d(21));
  printf("s6 0x%lx\n",reg_d(22));
  printf("s7 0x%lx\n",reg_d(23));
  printf("s8 0x%lx\n",reg_d(24));
  printf("s9 0x%lx\n",reg_d(25));
  printf("s10 0x%lx\n",reg_d(26));
  printf("s11 0x%lx\n",reg_d(27));
  printf("t3 0x%lx\n",reg_d(28));
  printf("t4 0x%lx\n",reg_d(29));
  printf("t5 0x%lx\n",reg_d(30));
  printf("t6 0x%lx\n",reg_d(31));
}

word_t isa_reg_str2val(const char *s, bool *success) {
  return 0;
}
