#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

int vsprintf(char *out, char const *fmt, va_list arg)
{

  //https://stackoverflow.com/questions/16647278/minimal-implementation-of-sprintf-or-printf
  char ch;
  int length = 0;

  char buffer[2048];

  uint64_t int_temp_u;

  char *string_temp;

  // char char_temp;
  // double double_temp;
  while ((ch = *fmt++))
  {
    if ('%' == ch)
    {
      switch (ch = *fmt++)
      {

      // case 'c':
      //     char_temp = va_arg(arg, int);
      //     strcpy(out+length, char_temp);
      //     length++;
      //     break;

      /* %s: print out a string       */
      case 's':
        string_temp = va_arg(arg, char *);
        strcpy(out + length, string_temp);
        length += strlen(string_temp);
        break;

      /* %d: print out an int         */
      case 'd':
        int_temp_u = va_arg(arg, uint64_t);
        utoa(int_temp_u, buffer, 10);
        strcpy(out + length, buffer);
        length += strlen(buffer);
        break;

      case 'x':
        int_temp_u = va_arg(arg, uint64_t);
        utoa(int_temp_u, buffer, 16);
        strcpy(out + length, buffer);
        length += strlen(buffer);
        break;

        // /* %x: print out an int in hex  */
        // case 'x':
        //   int_temp = va_arg(arg, int);
        //   itoa(int_temp, buffer, 16);
        //   fputs(buffer, file);
        //   length += strlen(buffer);
        //   break;

        // case 'f':
        //   double_temp = va_arg(arg, double);
        //   ftoa_fixed(buffer, double_temp);
        //   fputs(buffer, file);
        //   length += strlen(buffer);
        //   break;

        // case 'e':
        //   double_temp = va_arg(arg, double);
        //   ftoa_sci(buffer, double_temp);
        //   fputs(buffer, file);
        //   length += strlen(buffer);
        //   break;
      }
    }
    else
    {
      // strcpy(out + length, &ch);
      out[length] = ch;
      length++;
    }
  }
  out[length] = '\0';
  return length;
}

int printf(const char *fmt, ...)
{
  va_list arg;
  int done;
  va_start(arg, fmt);
  char buff[2048];
  done = vsprintf(buff, fmt, arg);
  va_end(arg);

  for (int i = 0; i < done; ++i)
  {
    putch(buff[i]);
  }
  return done;
}

int sprintf(char *out, const char *fmt, ...)
{

  va_list arg;
  int done;
  va_start(arg, fmt);
  done = vsprintf(out, fmt, arg);
  va_end(arg);
  return done;
}

int snprintf(char *out, size_t n, const char *fmt, ...)
{
  return 0;
}

int vsnprintf(char *out, size_t n, const char *fmt, va_list ap)
{
  return 0;
}

#endif
