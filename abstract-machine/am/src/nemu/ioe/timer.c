#include <am.h>
#include <nemu.h>
#include "klib.h"
void __am_timer_init()
{
}

void __am_timer_uptime(AM_TIMER_UPTIME_T *uptime)
{

  uint32_t data1=inl(RTC_ADDR);
  uint32_t data2=inl(RTC_ADDR+4);
  printf("data 1 %d\n",data1);
  printf("data 2 %d\n",data2);
  uint64_t time = ((uint64_t)data1) << 32 | data2;

  uptime->us = time;
}

void __am_timer_rtc(AM_TIMER_RTC_T *rtc)
{
  rtc->second = 0;
  rtc->minute = 0;
  rtc->hour = 0;
  rtc->day = 0;
  rtc->month = 0;
  rtc->year = 1900;
}
