static inline def_EHelper(remw)
{
    rtl_remw(s, ddest, dsrc1, dsrc2);
    print_asm_template3(remw);
    
}

static inline def_EHelper(remuw)
{
    rtl_remuw(s, ddest, dsrc1, dsrc2);
    print_asm_template3(remuw);
    
}

static inline def_EHelper(rem)
{
    rtl_idiv_r(s, ddest, dsrc1, dsrc2);
    print_asm_template3(rem);
    
}

static inline def_EHelper(remu)
{
    rtl_div_r(s, ddest, dsrc1, dsrc2);
    print_asm_template3(remu);
    
}
