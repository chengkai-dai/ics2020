#include <am.h>
#include <nemu.h>
#include "klib.h"
#define SYNC_ADDR (VGACTL_ADDR + 4)

void __am_gpu_init()
{
  int i;
  int w = 400; // TODO: get the correct width
  int h = 300; // TODO: get the correct height
  uint32_t *fb = (uint32_t *)(uintptr_t)FB_ADDR;
  for (i = 0; i < w * h; i++)
    fb[i] = i;
  outl(SYNC_ADDR, 1);
}

void __am_gpu_config(AM_GPU_CONFIG_T *cfg)
{
  uint32_t size = inw(VGACTL_ADDR);
  int w = size >> 16;
  int h = (int)(int16_t)size;

  printf("width %d\n",w);
  printf("height %d\n",h);
  printf("size %d\n",size);
  *cfg = (AM_GPU_CONFIG_T){
      .present = true, .has_accel = false, .width = w, .height = h, .vmemsz = 0};
}

void __am_gpu_fbdraw(AM_GPU_FBDRAW_T *ctl)
{
  if (ctl->sync)
  {
    outl(SYNC_ADDR, 1);
  }
}

void __am_gpu_status(AM_GPU_STATUS_T *status)
{
  status->ready = true;
}
