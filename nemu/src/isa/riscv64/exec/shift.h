static inline def_EHelper(shri)
{
    if (id_src2->imm >> 10)
    {   
        rtl_sari(s, ddest, dsrc1, id_src2->imm);
        print_asm_template3(srai);
    }
    else
    {
        rtl_shri(s, ddest, dsrc1, id_src2->imm);
        print_asm_template3(srli);
    }
}

static inline def_EHelper(shlrw)
{
    rtl_shlw(s, ddest, dsrc1, dsrc2);
    print_asm_template3(sllw);
}

static inline def_EHelper(shli){
    rtl_shli(s, ddest, dsrc1, id_src2->imm);
    print_asm_template3(slli);
}