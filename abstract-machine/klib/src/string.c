#include <klib.h>
#include <stdint.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

size_t strlen(const char *s)
{
  return 0;
}

char *strcpy(char *dst, const char *src)
{
  return NULL;
}

char *strncpy(char *dst, const char *src, size_t n)
{
  return NULL;
}

char *strcat(char *dst, const char *src)
{
  return NULL;
}

int strcmp(const char *s1, const char *s2)
{
  int i = 0;
  if (s1 == NULL && s2 == NULL)
  {
    return -1;
  }

  if (s1 == NULL && s2 != NULL)
  {
    return (int)s2[0];
  }

  if (s2 == NULL && s1 != NULL)
  {
    return (int)s1[0];
  }

  while (s1[i] != '\0' && s2[i] != '\0')
  {
    if (s1[i] != s2[i]){
      return (int)(s1[i]-s2[i]);
    }
    i++;
  }
  return (int)(s1[i-1]-s2[i-1]);
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
