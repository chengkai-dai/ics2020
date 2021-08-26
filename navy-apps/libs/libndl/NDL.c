#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <assert.h>

static int evtdev = 4;
static int fbdev = -1;
static int screen_w = 400, screen_h = 300;

static FILE *fb_event = NULL;
static FILE *fb_displayinfo = NULL;
static FILE *fb_fb = NULL;
static int canvas_w = 0, canvas_h = 0;
static int place_x = 0, place_y = 0;

static uint32_t *canvas = NULL;

uint32_t NDL_GetTicks()
{
  struct timeval now;
  gettimeofday(&now, NULL);
  unsigned int seconds = now.tv_sec;
  unsigned int useconds = now.tv_usec;
  return seconds * 1000 + (useconds + 500) / 1000;
}

int NDL_PollEvent(char *buf, int len)
{
  fseek(fb_event, 0, SEEK_SET);
  assert(fb_event != NULL);
  memset(buf, 0, len);
  /* int ret = fread(buf ,1,3,fp);
  fscanf(fp,"%s",buf+3); */
  //printf("%d\n",len);
  int ret = fread(buf, 1, len, fb_event);
  if (ret == 0)
    return 0;
  // for (int i = 0; i < len && ret != 0; i++)
  // {
  //   if (buf[i] == '\n')
  //   {
  //     buf[i] = '\0';
  //     return ret;
  //   }
  // }
}

void NDL_OpenCanvas(int *w, int *h)
{
  assert(*w < 0 && *h < 0);
  if (*w > screen_w || *w == 0)
    canvas_w = screen_w;
  if (*h > screen_h || *h == 0)
    canvas_h = screen_h;
  canvas_h = *h;
  canvas_w = *w;

  place_x = (screen_w - canvas_w) / 2;
  place_y = (screen_h - canvas_h) / 2;

  if (getenv("NWM_APP"))
  {
    int fbctl = 4;
    fbdev = 5;
    screen_w = *w;
    screen_h = *h;
    char buf[64];
    int len = sprintf(buf, "%d %d", screen_w, screen_h);
    // let NWM resize the window and create the frame buffer
    write(fbctl, buf, len);
    while (1)
    {
      // 3 = evtdev
      int nread = read(3, buf, sizeof(buf) - 1);
      if (nread <= 0)
        continue;
      buf[nread] = '\0';
      if (strcmp(buf, "mmap ok") == 0)
        break;
    }
    close(fbctl);
  }
}

void NDL_DrawRect(uint32_t *pixels, int x, int y, int w, int h)
{
  printf("place_x %d\n",place_x);
  printf("place_y %d\n",place_y);

  uint32_t *pixel_info = (uint32_t *)malloc(sizeof(uint32_t) * (screen_h) * (screen_w));

  for (int i = 0; i < h; ++i)
  {
    for (int j = 0; j < w; ++j)
    {
      if (place_y + i < screen_h && place_x + j < screen_w)
      {

        // *(pixel_info + ctl->x + i * width + j) = inl(VGACTL_ADDR + 4 * (ctl->x + i * width + j));
        pixel_info[place_y * screen_w + i * screen_w + place_x + j] = pixels[w * i + j];
      }
    }
  }

  for (int i = 0; i < h; ++i)
  {

    fseek(fb_fb, 4 * ((i + place_y) * screen_w + place_x), SEEK_SET);
    fwrite((void *)(pixel_info + ((i + place_y) * screen_w)+ place_x), 1, 4 * canvas_w, fb_fb);
  }
}

void NDL_OpenAudio(int freq, int channels, int samples)
{
}

void NDL_CloseAudio()
{
}

int NDL_PlayAudio(void *buf, int len)
{
  return 0;
}

int NDL_QueryAudio()
{
  return 0;
}

int NDL_Init(uint32_t flags)
{
  if (getenv("NWM_APP"))
  {
    evtdev = 3;
  }

  fb_event = fopen("/dev/events", "r");
  fb_displayinfo = fopen("/proc/displayinfo", "r");
  fb_fb = fopen("/dev/fb", "w");

  return 0;
}

void NDL_Quit()
{
}
