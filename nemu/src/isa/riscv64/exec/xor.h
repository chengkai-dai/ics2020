static inline def_EHelper(xori)
{
    rtl_xori(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(xori);

}

static inline def_EHelper(xorr)
{
    rtl_xor(s, ddest, dsrc1, dsrc2);

    print_asm_template3(xor);

}