#include <am.h>
#include <nemu.h>
#include "klib.h"
void __am_timer_init()
{
}

void __am_timer_uptime(AM_TIMER_UPTIME_T *uptime)
{

  uint8_t data1 = inb(RTC_ADDR);
  uint8_t data2 = inb(RTC_ADDR + 1);
  uint8_t data3 = inb(RTC_ADDR + 2);
  uint8_t data4 = inb(RTC_ADDR + 3);
  uint8_t data5 = inb(RTC_ADDR + 4);
  uint8_t data6 = inb(RTC_ADDR + 5);
  uint8_t data7 = inb(RTC_ADDR + 6);
  uint8_t data8 = inb(RTC_ADDR + 7);

  uint64_t time = ((uint64_t)data1) << 56 |
                  ((uint64_t)data2) << 48 |
                  ((uint64_t)data3) << 40 |
                  ((uint64_t)data4) << 32 |
                  ((uint64_t)data5) << 24 |
                  ((uint64_t)data6) << 16 |
                  ((uint64_t)data7) << 8 |
                  data8;

  // uint64_t time = ((uint64_t)data2) << 32 | data1;

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
