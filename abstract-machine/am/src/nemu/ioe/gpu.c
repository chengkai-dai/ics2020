#include <am.h>
#include <nemu.h>
#include "klib.h"
#define SYNC_ADDR (VGACTL_ADDR + 4)

void __am_gpu_init()
{
  // uint32_t size = inl(VGACTL_ADDR);
  // int i;
  // int w = size >> 16;
  // ; // TODO: get the correct width
  // int h = (int)(int16_t)size;
  // ; // TODO: get the correct height
  // uint32_t *fb = (uint32_t *)(uintptr_t)FB_ADDR;
  // for (i = 0; i < w * h; i++)
  //   fb[i] = i;
  // outl(SYNC_ADDR, 1);
}

void __am_gpu_config(AM_GPU_CONFIG_T *cfg)
{
  uint32_t size = inl(VGACTL_ADDR);
  int w = size >> 16;
  int h = (int)(int16_t)size;
  *cfg = (AM_GPU_CONFIG_T){
      .present = true, .has_accel = false, .width = w, .height = h, .vmemsz = 0};
}

//int x, y; void *pixels; int w, h; bool sync
//AM帧缓冲控制器, 可写入绘图信息, 向屏幕(x, y)坐标处绘制w*h的矩形图像.
//图像像素按行优先方式存储在pixels中, 每个像素用32位整数以00RRGGBB的方式描述颜色.
//若sync为true, 则马上将帧缓冲中的内容同步到屏幕上
void __am_gpu_fbdraw(AM_GPU_FBDRAW_T *ctl)
{

  //assert((uintptr_t)heap.start <= (uintptr_t)hbrk && (uintptr_t)hbrk < (uintptr_t)heap.end);
  // for (uint64_t *p = (uint64_t *)old; p != (uint64_t *)hbrk; p ++) {
  //   *p = 0;
  // }

  uint32_t size = inl(VGACTL_ADDR);
  int width = size >> 16;
  // int height = (int)(int16_t)size;

  uint32_t *pixel_info = (uint32_t *)(uintptr_t)FB_ADDR;
  uint32_t *buffer = (uint32_t *)(uintptr_t)ctl->pixels;

  // printf("width %d\n", width);
  // printf("height %d\n", height);
  // printf("x %d\n", ctl->x);
  // printf("y %d\n", ctl->y);
  // printf("w %d\n", ctl->w);
  // printf("h %d\n", ctl->h);

  for (int i = 0; i < ctl->h; ++i)
  {
    for (int j = 0; j < ctl->w; ++j)
    {
      // *(pixel_info + ctl->x + i * width + j) = inl(VGACTL_ADDR + 4 * (ctl->x + i * width + j));
      pixel_info[ctl->y * width + ctl->x + i * width + j] = buffer[ctl->x * i + j];
    }
  }

  if (ctl->sync)
  {
    outl(SYNC_ADDR, 1);
  }
}

void __am_gpu_status(AM_GPU_STATUS_T *status)
{
  status->ready = true;
}
