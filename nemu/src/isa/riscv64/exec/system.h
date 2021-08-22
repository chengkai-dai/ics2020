extern void raise_intr(DecodeExecState *s, word_t NO, vaddr_t epc);

static inline def_EHelper(syscall)
{
    // assert(s->isa.instr.csr.csr==0 && s->isa.instr.csr.rd==0 || s->isa.instr.csr.rs1==0);
    // raise_intr(s, ddest, dsrc1, dsrc2);
    // print_asm("ecall\n");
    //https://pdos.csail.mit.edu/6.828/2019/lec/l-internal.txt
    //ecall did three things:
    //jump to $stvec (i.e. set $pc to $stvec)
    //save $pc in $sepc
    //change mode from user to supervisor -- we can't see this

    // *(&cpu.csr[1]._64) = s->seq_pc;
    // s->seq_pc = cpu.csr[3]._64;
    // print_asm("ecall\n");
    assert(s->isa.instr.csr.rd == 0 || s->isa.instr.csr.rs1 == 0);
    if (s->isa.instr.csr.csr == 0)
    {
        //ecall
        bool success;
        word_t syscall_id = isa_reg_str2val("a7", &success);
        printf("do No. %ld syscall\n",syscall_id);
        assert(success == true);
        raise_intr(s, syscall_id, cpu.pc);
        print_asm("ecall\n");
    }
    else if (s->isa.instr.csr.csr == 0x102)
    {
        //sret
        s->seq_pc = cpu.csr[1]._64 + 4;
        print_asm("sret\n");
    }
}
