static inline def_EHelper(divw)
{
    rtl_divw(s, ddest, dsrc1, dsrc2);
    print_asm_template3(divw);
    
}

static inline def_EHelper(divu)
{
    rtl_div_q(s, ddest, dsrc1, dsrc2);
    print_asm_template3(divu);
    
}
