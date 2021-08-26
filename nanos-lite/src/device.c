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
  return 0;
}

size_t fb_write(const void *buf, size_t offset, size_t len)
{
  return 0;
}

void init_device()
{
  Log("Initializing devices...");
  ioe_init();
}
