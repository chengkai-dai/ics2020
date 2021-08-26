#include <common.h>

#if defined(MULTIPROGRAM) && !defined(TIME_SHARING)
#define MULTIPROGRAM_YIELD() yield()
#else
#define MULTIPROGRAM_YIELD()
#endif

#define NAME(key) \
  [AM_KEY_##key] = #key,

static const char *keyname[256] __attribute__((used)) = {
    [AM_KEY_NONE] = "NONE",
    AM_KEYS(NAME)};

size_t serial_write(const void *buf, size_t offset, size_t len)
{
  char *cbuf = (char *)buf;
  for (int i = 0; i < len; ++i)
  {
    putch(*(cbuf + i));
  }
  return len;
}

size_t events_read(void *buf, size_t offset, size_t len)
{
  AM_INPUT_KEYBRD_T ev = io_read(AM_INPUT_KEYBRD);

  // if(ev.keydown==false){
  //   return 0;
  // }
  // else
  // {
  //   printf("keycode %s\n",keyname[ev.keycode]);
  //   memcpy(buf,keyname[ev.keycode],strlen(keyname[ev.keycode]));
  // }
  // return strlen(keyname[ev.keycode]);

  if (ev.keycode == AM_KEY_NONE)
  {
    //memset(buf,0,len);
    return 0;
  }
  else
  {
    memset(buf, 0, len);
    if (ev.keydown)
    {
      sprintf((char *)buf, "kd %s\n", keyname[ev.keycode]);
    }
    else
      sprintf((char *)buf, "ku %s\n", keyname[ev.keycode]);

    return strlen((char *)buf);
  }
}

size_t dispinfo_read(void *buf, size_t offset, size_t len)
{
  int w = io_read(AM_GPU_CONFIG).width;
  int h = io_read(AM_GPU_CONFIG).height;
  return sprintf((char *)buf, "WIDTH:%d\nHEIGHT:%d\n", w, h);
}

//    fwrite((void *)(pixel_info + ((i + place_y) * screen_w)+ place_x), 1, 4 * canvas_w, fb_fb);

size_t fb_write(const void *buf, size_t offset, size_t len)
{
  //      io_write(AM_GPU_FBDRAW, x * w, y * h, color_buf, w, h, false);

  int w = io_read(AM_GPU_CONFIG).width;
  int h = io_read(AM_GPU_CONFIG).height;
  int x = (offset/4)%w;
  int y = (offset/4)/w;
  if(offset+len > w*h*4) len = w*h*4 - offset;
  io_write(AM_GPU_FBDRAW,x,y,(uint32_t*)buf,len/4,1,true);
  //io_write(AM_GPU_FBDRAW, 0, 0, NULL, 0, 0, true);
  assert(offset <= w*h*4);
  return len;
}

void init_device()
{
  Log("Initializing devices...");
  ioe_init();
}
