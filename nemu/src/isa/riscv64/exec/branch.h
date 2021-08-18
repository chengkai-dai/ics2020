static inline def_EHelper(beq)
{
    rtl_beq(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(beq);
}

static inline def_EHelper(bne)
{
    rtl_bne(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(bne);
}

static inline def_EHelper(bge)
{
    rtl_bge(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(bge);
}


static inline def_EHelper(blt)
{
    rtl_blt(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(blt);
}

static inline def_EHelper(bltu)
{
    rtl_bltu(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(bltu);
}

static inline def_EHelper(bgeu)
{
    rtl_bgeu(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(bgeu);
}
