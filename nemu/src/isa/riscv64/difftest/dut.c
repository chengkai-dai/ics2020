#include <isa.h>
#include <monitor/difftest.h>
#include "../local-include/reg.h"
#include "difftest.h"

bool isa_difftest_checkregs(CPU_state *ref_r, vaddr_t pc) {
  printf("test\n");
  for(int i=0;i<32;++i){
    if(ref_r->gpr[i]._64!=cpu.gpr[i]._64){
      printf("%d reg is not same 0x%lx 0x%lx\n",i,ref_r->gpr[i]._64,cpu.gpr[i]._64);
      return false;
    }
  }
  if(pc!=cpu.pc-4){
    printf("pc is not same 0x%lx 0x%lx\n",pc,cpu.pc);
    return false;
  }
  return true;
}

void isa_difftest_attach() {
}
