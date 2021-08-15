static inline def_EHelper(sltiu)
{
    rtl_sltiu(s, ddest, dsrc1, id_src2->imm);

    switch (s->width)
    {
    case 8:
        print_asm_template3(sltiu);
        break;
    default:
        assert(0);
    }
}