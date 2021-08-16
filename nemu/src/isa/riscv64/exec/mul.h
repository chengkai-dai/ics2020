static inline def_EHelper(mulw)
{
    rtl_mulw(s, ddest, dsrc1, dsrc2);
    print_asm_template3(mulw);
    
}

static inline def_EHelper(mul)
{
    rtl_mul_lo(s, ddest, dsrc1, dsrc2);
    print_asm_template3(mul);
    
}

