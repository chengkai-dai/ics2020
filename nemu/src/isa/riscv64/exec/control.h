static inline def_EHelper(csrrw)
{
    rtl_csrrw(s, ddest, dsrc1, dsrc2);

    print_asm_template3(csrrw);
}


static inline def_EHelper(csrrs)
{
    rtl_csrrs(s, ddest, dsrc1, dsrc2);

    print_asm_template3(csrrs);
}