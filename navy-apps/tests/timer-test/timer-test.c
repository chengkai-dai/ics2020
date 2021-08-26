#include <time.h>
#include <stdio.h>

static unsigned long get_time() {
  struct timeval now;
  gettimeofday(&now, NULL);
  unsigned int seconds = now.tv_sec;
  unsigned int useconds = now.tv_usec;
  return seconds * 1000 + (useconds + 500) / 1000;
}

int main() {
    unsigned long get_time()
}