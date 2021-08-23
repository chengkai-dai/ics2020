#include <proc.h>
#include <elf.h>
#include <fs.h>

#ifdef __LP64__
#define Elf_Ehdr Elf64_Ehdr
#define Elf_Phdr Elf64_Phdr
#else
#define Elf_Ehdr Elf32_Ehdr
#define Elf_Phdr Elf32_Phdr
#endif

static uintptr_t loader(PCB *pcb, const char *filename)
{
  Elf64_Ehdr elf;

  int fd = fs_open(filename, 0, 0);

  fs_read(fd, &elf, sizeof(Elf_Ehdr));

  Log("ELF loading from ram disk.");

  printf("*(elf.e_ident) 0x%x\n",*(elf.e_ident));

  assert(*(elf.e_ident) == 0x464c457f);

  for (int i = 0; i < elf.e_phnum; ++i)
  {
    Elf64_Phdr ph;
    fs_lseek(fd, elf.e_phoff + i * sizeof(Elf_Phdr), SEEK_SET);
    fs_read(fd, &ph, sizeof(Elf_Phdr));

    if (ph.p_type == PT_LOAD)
    {
      fs_lseek(fd, ph.p_offset, SEEK_SET);

      fs_read(fd, (void *)ph.p_vaddr, ph.p_memsz);

      if (ph.p_memsz > ph.p_filesz)
        memset((void *)ph.p_vaddr + ph.p_filesz, 0, (ph.p_memsz - ph.p_filesz));
    }
  }

  volatile uint32_t entry = elf.e_entry;

  // uint32_t entry = elf->e_entry;

  return entry;
}

void naive_uload(PCB *pcb, const char *filename)
{
  uintptr_t entry = loader(pcb, filename);
  Log("Jump to entry = %p", entry);
  ((void (*)())entry)();
}
