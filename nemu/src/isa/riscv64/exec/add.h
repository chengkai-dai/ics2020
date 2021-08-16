static inline def_EHelper(addi)
{
    rtl_addi(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(add);

    // switch (s->width)
    // {
    // case 8:
    //     print_asm_template3(add);
    //     break;
    // default:
    //     assert(0);
    // }
}

static inline def_EHelper(add_sub)
{
    if(s->isa.instr.r.funct7==0)
        rtl_add(s, ddest, dsrc1, dsrc2);
    else
        rtl_sub(s, ddest, dsrc1, dsrc2);

    print_asm_template3(add);
    // switch (s->width)
    // {
    // case 8:
    //     print_asm_template3(add);
    //     break;
    // default:
    //     assert(0);
    // }
}

static inline def_EHelper(addiw)
{
    rtl_addwi(s, ddest, dsrc1, id_src2->imm);

    print_asm_template3(addw);
    
    // switch (s->width)
    // {
    // case 8:
    //     print_asm_template3(add);
    //     break;
    // default:
    //     assert(0);
    // }
}