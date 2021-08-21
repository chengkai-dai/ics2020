#include <proc.h>
#include <elf.h>

extern uint8_t ramdisk_start;
extern uint8_t ramdisk_end;
#define RAMDISK_SIZE ((&ramdisk_end) - (&ramdisk_start))

#ifdef __LP64__
#define Elf_Ehdr Elf64_Ehdr
#define Elf_Phdr Elf64_Phdr
#else
#define Elf_Ehdr Elf32_Ehdr
#define Elf_Phdr Elf32_Phdr
#endif

static uintptr_t loader(PCB *pcb, const char *filename)
{
  Elf64_Ehdr *elf;
  Elf64_Phdr *ph, *eph;

  elf = (void *)(&ramdisk_start);
  Log("ELF loading from ram disk.");

  assert(*(uint32_t *)elf->e_ident == 0x464c457f);

  ph = (void *)(elf + elf->e_phoff);
  eph = ph + elf->e_phnum;

  for (; ph < eph; ++ph)
  {
    if (ph->p_type == PT_LOAD)
    {
      memcpy((void *)ph->p_vaddr, (void *)ph->p_offset, ph->p_memsz);

      if (ph->p_memsz > ph->p_filesz)
        memset((void *)ph->p_vaddr + ph->p_filesz, 0, (ph->p_memsz - ph->p_filesz));
    }
  }

  // volatile uint32_t entry = elf->e_entry;

  uint32_t entry = elf->e_entry;

  return entry;
}

void naive_uload(PCB *pcb, const char *filename)
{
  uintptr_t entry = loader(pcb, filename);
  Log("Jump to entry = %p", entry);
  ((void (*)())entry)();
}
