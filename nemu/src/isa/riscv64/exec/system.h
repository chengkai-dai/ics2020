static inline def_EHelper(ecall)
{
    // assert(s->isa.instr.csr.csr==0 && s->isa.instr.csr.rd==0 || s->isa.instr.csr.rs1==0);
    // raise_intr(s, ddest, dsrc1, dsrc2);
    // print_asm("ecall\n");
    //https://pdos.csail.mit.edu/6.828/2019/lec/l-internal.txt
    //ecall did three things:
    //jump to $stvec (i.e. set $pc to $stvec)
    //save $pc in $sepc
    //change mode from user to supervisor -- we can't see this

    s->seq_pc = cpu.csr[3]._64;
    *(&cpu.csr[1]._64) = cpu.pc;
    printf("epc 0x%lx\n",cpu.csr[1]._64);
    printf("seq_pc 0x%lx\n",s->seq_pc);

    print_asm("ecall\n");
}
