#include <fs.h>
#include <stdio.h>

typedef size_t (*ReadFn)(void *buf, size_t offset, size_t len);
typedef size_t (*WriteFn)(const void *buf, size_t offset, size_t len);

typedef struct
{
  char *name;
  size_t size;
  size_t disk_offset;
  size_t open_offset;
  ReadFn read;
  WriteFn write;
} Finfo;

enum
{
  FD_STDIN,
  FD_STDOUT,
  FD_STDERR,
  FD_FB
};

// enum
// {
//   SEEK_SET,
//   SEEK_CUR,
//   SEEK_END,
// };

size_t
invalid_read(void *buf, size_t offset, size_t len)
{
  panic("should not reach here");
  return 0;
}

size_t invalid_write(const void *buf, size_t offset, size_t len)
{
  panic("should not reach here");
  return 0;
}

/* This is the information about all files in disk. */
static Finfo file_table[] __attribute__((used)) = {
    [FD_STDIN] = {"stdin", 0, 0, 0, invalid_read, invalid_write},
    [FD_STDOUT] = {"stdout", 0, 0, 0, invalid_read, invalid_write},
    [FD_STDERR] = {"stderr", 0, 0, 0, invalid_read, invalid_write},
#include "files.h"
};

static const int file_length = (int)(sizeof(file_table) / sizeof(file_table[0]));


void init_fs()
{
  // TODO: initialize the size of /dev/fb
}

int fs_open(const char *pathname, int flags, int mode)
{
  for (int i = 3; i < file_length; ++i)
  {
    if (strcmp(pathname, file_table[i].name) == 0)
      return i;
  }
  return -1;
}

size_t fs_read(int fd, void *buf, size_t len)
{
  return 0;
}
size_t fs_write(int fd, const void *buf, size_t len)
{
  assert(fd >= 0);
  if (fd == 1 || fd == 2)
  {
    char *cbuf = (char *)buf;
    for (int i = 0; i < len; ++i)
    {
      putch(*(cbuf + i));
    }
    return len;
  }
  return 0;
}
size_t fs_lseek(int fd, size_t offset, int whence)
{
  assert(fd >= 0);
  switch (whence)
  {
  case SEEK_SET:
    file_table[fd].open_offset += offset;
    return offset;
    break;
  case SEEK_CUR:
    file_table[fd].open_offset += offset;
    return file_table[fd].open_offset;
    break;
  case SEEK_END:
    file_table[fd].open_offset += file_table[fd].size + offset;
    return file_table[fd].open_offset;
    break;
  default:
    printf("please set the right whence parameter");
    assert(0);
    break;
  }
}
int fs_close(int fd)
{

  return 0;
}