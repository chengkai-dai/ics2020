static inline def_EHelper(shri)
{
    if (id_src2->imm >> 10)
    {
        printf("before dest 0x%lx\n", *ddest);
        printf("before dsrc1 0x%lx\n", *dsrc1);
        printf("before imm %ld\n", id_src2->imm & 0x1F);
        rtl_sari(s, ddest, dsrc1, id_src2->imm);
        printf("after dest 0x%lx\n", *ddest);

        print_asm_template3(srai);
    }
    else
    {
        printf("before dest 0x%lx\n", *ddest);
        printf("before dsrc1 0x%lx\n", *dsrc1);
        printf("before imm %ld\n", id_src2->imm & 0x1F);
        rtl_shri(s, ddest, dsrc1, id_src2->imm);
        printf("after dest 0x%lx\n", *ddest);
        print_asm_template3(srli);
    }
}

static inline def_EHelper(shlrw)
{
    printf("before dest 0x%lx\n", *ddest);
    printf("before dsrc1 0x%lx\n", *dsrc1);
    printf("before dsrc2 %ld\n", *dsrc2);
    rtl_shlw(s, ddest, dsrc1, dsrc2);
    printf("after dest 0x%lx\n", *ddest);
    print_asm_template3(sllw);
}