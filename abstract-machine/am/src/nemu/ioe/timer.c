#include <am.h>
#include <nemu.h>
#include "klib.h"
void __am_timer_init()
{
}

void __am_timer_uptime(AM_TIMER_UPTIME_T *uptime)
{
  printf("start\n");
  uint8_t data1 = inb(RTC_ADDR);
  uint8_t data2 = inb(RTC_ADDR + 1);
  uint8_t data3 = inb(RTC_ADDR + 2);
  uint8_t data4 = inb(RTC_ADDR + 3);
  uint8_t data5 = inb(RTC_ADDR + 4);
  uint8_t data6 = inb(RTC_ADDR + 5);
  uint8_t data7 = inb(RTC_ADDR + 6);
  uint8_t data8 = inb(RTC_ADDR + 7);

  uint32_t sec = ((uint32_t)data5) << 24 |
                 ((uint32_t)data6) << 16 |
                 ((uint32_t)data7) << 8 |
                 ((uint32_t)data8);

  uint32_t usec = ((uint32_t)data1) << 24 |
                  ((uint32_t)data2) << 16 |
                  ((uint32_t)data3) << 8 |
                  ((uint32_t)data4);

  printf("sec %d\n",sec);
printf("usec %d\n",usec);
      // uint64_t time = ((uint64_t)data2) << 32 | data1;
      // uint32_t data1 = inl(RTC_ADDR);
      // uint8_t data2 = inl(RTC_ADDR + 4);
      uint64_t time = ((uint64_t)sec) << 32 | usec;
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
