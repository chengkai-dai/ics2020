#include <stdio.h>

int main()
{
        NDL_Init(0);

    unsigned long start_time = NDL_GetTicks();

    while (1)
    {
        unsigned long current_time = NDL_GetTicks();

        if ((current_time - start_time) % 500 < 7)
        {
            printf("hello in %d ms\n", (int)(current_time - start_time));
        }
    }



    return 0;
}