#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <assert.h>

static int evtdev = 4;
static int fbdev = -1;
static int screen_w = 0, screen_h = 0;
static FILE* fb_event = NULL;

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
  for (int i = 0; i < len && ret != 0; i++)
  {
    if (buf[i] == '\n')
    {
      buf[i] = '\0';
      return ret;
    }
  }
}

void NDL_OpenCanvas(int *w, int *h)
{
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

  return 0;
}

void NDL_Quit()
{
}
