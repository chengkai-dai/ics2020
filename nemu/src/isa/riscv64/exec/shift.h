static inline def_EHelper(shr)
{
    if(id_src2->imm >> 10){
        rtl_sari(s,ddest, dsrc1, id_src2->imm);
        print_asm_template3(srai);
    }
    else
    {
        rtl_shri(s,ddest, dsrc1, id_src2->imm);
        print_asm_template3(srli);
    }

}