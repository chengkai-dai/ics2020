static inline def_EHelper(add) {
    rtl_addi(s,ddest,dsrc1,id_src2->imm);
    printf("id_dest->str %s\n",id_dest->str);
    printf("id_src2->imm %ld\n",id_src2->imm);
    printf("reg_name(id_dest->reg) %s\n",reg_name(id_dest->reg));

    print_Dop(id_src1->str, OP_STR_SIZE, "%ld(%s)", id_src2->imm, reg_name(id_src1->reg));
    switch (s->width) {
        case 8: print_asm_template2(add); break;
        default: assert(0);
    }
}