static inline def_EHelper(andi)
{
    rtl_andi(s, ddest, dsrc1, id_src2->imm);
    print_asm_template3(andi);

}

static inline def_EHelper(andr)
{
    rtl_and(s, ddest, dsrc1, dsrc2);
    print_asm_template3(and);
    
}

