static inline def_EHelper(sltiu)
{
    rtl_sltiu(s, ddest, dsrc1, id_src2->imm);
    print_asm_template3(sltiu);

}

static inline def_EHelper(sltu)
{
    rtl_sltu(s, ddest, dsrc1, dsrc2);
    print_asm_template3(sltu);

}