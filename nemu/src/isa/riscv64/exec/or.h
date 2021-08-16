static inline def_EHelper(ori)
{
    rtl_ori(s, ddest, dsrc1, id_src2->imm);
    print_asm_template3(andi);

}

static inline def_EHelper(orr)
{
    rtl_or(s, ddest, dsrc1, dsrc2);
    print_asm_template3(or);
    
}

