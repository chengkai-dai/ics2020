static inline def_EHelper(beq)
{
    rtl_beq(s, ddest, dsrc1, id_src2->imm);

    switch (s->width)
    {
    case 8:
        print_asm_template3(beq);
        break;
    default:
        assert(0);
    }
}