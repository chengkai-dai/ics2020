#include <time.h>
#include <stdio.h>

static unsigned long get_time()
{
    struct timeval now;
    gettimeofday(&now, NULL);
    unsigned int seconds = now.tv_sec;
    unsigned int useconds = now.tv_usec;
    return seconds * 1000 + (useconds + 500) / 1000;
}

int main()
{
    unsigned long start_time = get_time();

    while (1)
    {
        unsigned long current_time = get_time();

        if ((current_time - start_time) % 500 < 10)
        {
            printf("hello in %d ms\n", (int)(current_time - start_time));
        }
    }

    return 0;
}