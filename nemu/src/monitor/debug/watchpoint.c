#include "watchpoint.h"
#include "expr.h"

#define NR_WP 32

static WP wp_pool[NR_WP] = {};
static WP *head = NULL, *free_ = NULL;

void init_wp_pool()
{
  int i;
  for (i = 0; i < NR_WP; i++)
  {
    wp_pool[i].NO = i;
    wp_pool[i].next = &wp_pool[i + 1];
    wp_pool[i].free = true;
    wp_pool[i].pc = -1;
  }
  wp_pool[NR_WP - 1].next = NULL;

  head = NULL;
  free_ = wp_pool;
}

/* TODO: Implement the functionality of watchpoint */

WP *new_wp()
{
  assert(free_ != NULL);
  WP *p = free_;
  free_ = free_->next;
  assert(p->free == false);
  p->free = true;
  return p;
}

void free_wp(WP *wp)
{
  wp->free = true;
  wp->pc = -1;
  wp->next = NULL;

  WP *tmp_wp = free_;
  if (tmp_wp == NULL)
  {
    free_ = wp;
    return;
  }
  while (tmp_wp->next != NULL)
    tmp_wp = tmp_wp->next;
  tmp_wp->next = wp;
}