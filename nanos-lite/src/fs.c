#include <fs.h>

typedef size_t (*ReadFn)(void *buf, size_t offset, size_t len);
typedef size_t (*WriteFn)(const void *buf, size_t offset, size_t len);
extern size_t ramdisk_read(void *buf, size_t offset, size_t len);
extern size_t ramdisk_write(const void *buf, size_t offset, size_t len);
extern size_t serial_write(const void *buf, size_t offset, size_t len);
extern size_t events_read(void *buf, size_t offset, size_t len);
extern size_t dispinfo_read(void *buf, size_t offset, size_t len);
extern size_t fb_write(const void *buf, size_t offset, size_t len);

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
  FD_FB,
  FD_DEV_EVENTS,
  FD_DISPLAYINFO
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
    [FD_STDOUT] = {"stdout", 0, 0, 0, invalid_read, serial_write},
    [FD_STDERR] = {"stderr", 0, 0, 0, invalid_read, serial_write},
    [FD_FB] = {"/dev/fb", 0, 0, 0, invalid_read, fb_write},
    [FD_DEV_EVENTS] = {"/dev/events", 0, 0, 0, events_read, invalid_write},
    [FD_DISPLAYINFO] = {"/proc/displayinfo", 64, 0, 0, dispinfo_read, invalid_write},

#include "files.h"
};

static const int file_length = (int)(sizeof(file_table) / sizeof(file_table[0]));

void init_fs()
{
  // TODO: initialize the size of /dev/fb
  int w = io_read(AM_GPU_CONFIG).width;
  int h = io_read(AM_GPU_CONFIG).height;
  file_table[FD_FB].size = w * h * 4;
}

int fs_open(const char *pathname, int flags, int mode)
{
  for (int i = 3; i < file_length; ++i)
  {
    if (strcmp(pathname, file_table[i].name) == 0)
    {
      file_table[i].open_offset = 0;
      return i;
    }
  }
  assert(0);
  return -1;
}

size_t fs_read(int fd, void *buf, size_t len)
{
  assert(fd >= 3 && fd < file_length);
  if (file_table[fd].read == NULL)
  {
    assert(file_table[fd].open_offset < file_table[fd].size);
    if (file_table[fd].open_offset + len > file_table[fd].size)
      len = file_table[fd].size - file_table[fd].open_offset;
    ramdisk_read(buf, file_table[fd].disk_offset + file_table[fd].open_offset, len);
    file_table[fd].open_offset += len;
    return len;
  }
  else
    return file_table[fd].read(buf, file_table[fd].disk_offset + file_table[fd].open_offset, len);
}
size_t fs_write(int fd, const void *buf, size_t len)
{
  assert(fd > 0 && fd < file_length);

  if (file_table[fd].write == NULL)
  {
    assert(file_table[fd].open_offset < file_table[fd].size);
    if (file_table[fd].open_offset + len > file_table[fd].size)
      len = file_table[fd].size - file_table[fd].open_offset;
    ramdisk_write(buf, file_table[fd].disk_offset + file_table[fd].open_offset, len);
    file_table[fd].open_offset += len;
    return len;
  }
  else
    return file_table[fd].write(buf, file_table[fd].disk_offset + file_table[fd].open_offset, len);
}
size_t fs_lseek(int fd, size_t offset, int whence)
{
  assert(fd >= 0 && fd < file_length);
  switch (whence)
  {
  case SEEK_SET:
    file_table[fd].open_offset = offset;
    break;
  case SEEK_CUR:
    file_table[fd].open_offset += offset;
    assert(file_table[fd].open_offset <= file_table[fd].size);
    break;
  case SEEK_END:
    file_table[fd].open_offset += file_table[fd].size + offset;
    assert(file_table[fd].open_offset <= file_table[fd].size);
    break;
  default:
    assert(0);
    break;
  }

  return file_table[fd].open_offset;
}
int fs_close(int fd)
{
  if (fd < 3 && fd > file_length)
    return -1;
  return 0;
}
