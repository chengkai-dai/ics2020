#include <klib.h>
#include <stdint.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

size_t strlen(const char *str)
{
  const char *char_ptr;
  char_ptr = str;
  // unsigned long int longword;
  // for (char_ptr = str; ((unsigned long int)char_ptr & (sizeof(longword) - 1)) != 0; ++char_ptr)
  // {
  //   if (*char_ptr == '\0')
  //     return char_ptr - str;
  // }
  size_t len = 0;
  while (*char_ptr++ != '\0')
  {
    len++;
  }
  return len;
}

char *strcpy(char *dst, const char *src)
{
  // const char *char_ptr = src;
  // char *dest_ptr = dst;
  // while (*char_ptr != '\0')
  // {
  //   *dest_ptr = *char_ptr;
  //   dest_ptr++;
  //   char_ptr++;
  // }
  // *dest_ptr = '\0';
  // return dest_ptr;
  char *save = dst;
  for (; (*dst = *src) != '\0'; ++src, ++dst)
    ;
  return (save);
}

char *strncpy(char *dst, const char *src, size_t n)
{
  return NULL;
}

char *strcat(char *dst, const char *src)
{
  strcpy(dst + strlen(dst), src);
  return dst;
}

int strcmp(const char *s1, const char *s2)
{
  const unsigned char *p1 = (const unsigned char *)s1;
  const unsigned char *p2 = (const unsigned char *)s2;
  unsigned char c1, c2;
  do
  {
    c1 = (unsigned char)*p1++;
    c2 = (unsigned char)*p2++;
    if (c1 == '\0')
      return c1 - c2;
  } while (c1 == c2);
  return c1 - c2;
}

int strncmp(const char *s1, const char *s2, size_t n)
{
  return 0;
}

void *memset(void *v, int c, size_t n)
{
  return NULL;
}

void *memmove(void *dst, const void *src, size_t n)
{
  return NULL;
}

void *memcpy(void *out, const void *in, size_t n)
{
  return NULL;
}

int memcmp(const void *s1, const void *s2, size_t n)
{
  return 0;
}

#endif
