static inline def_EHelper(csrrw)
{
    rtl_csrrw(s, ddest, dsrc1, dsrc2);
    printf("after stvec 0x%lx",*dsrc2);
    printf("after stvec 2 0x%lx",cpu.csr[3]._64);

    print_asm_template3(csrrw);
}
