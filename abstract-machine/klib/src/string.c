#include <klib.h>
#include <stdint.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

size_t strlen(const char *str)
{
  const char *char_ptr;
  char_ptr = str;

  size_t len = 0;
  while (*char_ptr++ != '\0')
  {
    len++;
  }
  return len;
}

void strrev(char *str)
{
  int i;
  int j;
  unsigned char a;
  unsigned len = strlen((const char *)str);
  for (i = 0, j = len - 1; i < j; i++, j--)
  {
    a = str[i];
    str[i] = str[j];
    str[j] = a;
  }
}

char *strcpy(char *dst, const char *src)
{
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
  char *dst = (char *)v;
  for (int i = 0; i < n; i++)
  {
    dst[i] = (unsigned char)c;
  }
  return v;
}

void *memmove(void *dst, const void *src, size_t n)
{
  return NULL;
}

void *memcpy(void *out, const void *in, size_t n)
{
  char *dst = (char *)out;
  char *src = (char *)in;
  for (int i = 0; i < n; i++)
  {
    dst[i] = src[i];
  }
  return out;
}

int memcmp(const void *s1, const void *s2, size_t n)
{
  return 0;
}

//Other string ultilities

int utoa(uint64_t num, char *str, int base)
{
  uint64_t sum = num;
  int i = 0;
  uint64_t digit;
  do
  {
    digit = sum % (uint64_t)base;
    if (digit < 0xA)
      str[i++] = '0' + digit;
    else
      str[i++] = 'A' + digit - 0xA;
    sum /= base;
  } while (sum);

  str[i] = '\0';
  strrev(str);
  return 0;
}

int itoa(int num, char *str, int base)
{
  int sum = num;
  int i = 0;
  int digit;
  do
  {
    digit = sum % base;
    if (digit < 0xA)
      str[i++] = '0' + digit;
    else
      str[i++] = 'A' + digit - 0xA;
    sum /= base;
  } while (sum);

  str[i] = '\0';
  strrev(str);
  return 0;
}


#endif
