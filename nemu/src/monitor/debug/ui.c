#include <isa.h>
#include "expr.h"
#include "watchpoint.h"
#include "memory/vaddr.h"

#include <stdlib.h>
#include <readline/readline.h>
#include <readline/history.h>

void cpu_exec(uint64_t);
int is_batch_mode();

/* We use the `readline' library to provide more flexibility to read from stdin. */
static char *rl_gets()
{
  static char *line_read = NULL;

  if (line_read)
  {
    free(line_read);
    line_read = NULL;
  }

  line_read = readline("(nemu) ");

  if (line_read && *line_read)
  {
    add_history(line_read);
  }

  return line_read;
}

static int cmd_c(char *args)
{
  cpu_exec(-1);
  return 0;
}

static int cmd_q(char *args)
{
  return -1;
}

static int cmd_help(char *args);

static int cmd_si(char *args)
{
  char *val = args;

  int steps;

  if (val == NULL)
    steps = 1;

  else
  {
    const int len = strlen(val);

    for (int i = 0; i < len; i++)
    {
      if (!isdigit(val[i]))
      {
        printf("Invalid expression: %s is not a number\n", val);
        return 0;
      }
    }

    steps = atoi(val);
  }
  // printf("Execute %d steps\n", steps);
  cpu_exec(steps);

  return 0;
}

static int cmd_info(char *args)
{

  if (strcmp(args, "r") == 0)
    isa_reg_display();

  return 0;
}

static int cmd_x(char *args)
{
  if (args == NULL)
  {
    printf("Invalid expression: None arguments\n");
    return 0;
  }

  //parse the first argument (num of the 4_bytes for displaying)
  char *args1 = strtok(NULL, " ");
  char *t;
  for (t = args1; *t != '\0'; t++)
  {
    if (*t < '0' || *t > '9')
    {
      puts("N should be a decimal number!");
      return 0;
    }
  }

  int32_t num_4bytes = (int32_t)strtol(args1, NULL, 10);

  //parse the second argument, the actual addr for the memory data
  char *args2 = args + strlen(args1) + 1;
  bool success = true;
  uint32_t addr = expr(args2, &success);
  if (!success)
  {
    printf("invalid addr expression: '%s'\n", args2);
  }
  else
  {
    // printf("addr 0x%x\n", addr);
    for (int i = 0; i < num_4bytes; ++i)
    {
      uint32_t val = vaddr_read(addr + 4 * i, 4);
      printf("0x%x ", val);
    }
    printf("\n");
  }

  return 0;
}

static struct
{
  char *name;
  char *description;
  int (*handler)(char *);
} cmd_table[] = {
    {"help", "Display informations about all supported commands", cmd_help},
    {"c", "Continue the execution of the program", cmd_c},
    {"q", "Exit NEMU", cmd_q},

    /* TODO: Add more commands */
    {"si", "Single Step Execution", cmd_si},
    {"info", "Status Check", cmd_info},
    {"x", "Memory Check", cmd_x},

};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char *args)
{
  /* extract the first argument */
  char *arg = strtok(NULL, " ");
  int i;

  if (arg == NULL)
  {
    /* no argument given */
    for (i = 0; i < NR_CMD; i++)
    {
      printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
    }
  }
  else
  {
    for (i = 0; i < NR_CMD; i++)
    {
      if (strcmp(arg, cmd_table[i].name) == 0)
      {
        printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        return 0;
      }
    }
    printf("Unknown command '%s'\n", arg);
  }
  return 0;
}

void ui_mainloop()
{
  if (is_batch_mode())
  {
    cmd_c(NULL);
    return;
  }

  for (char *str; (str = rl_gets()) != NULL;)
  {
    char *str_end = str + strlen(str);

    /* extract the first token as the command */
    char *cmd = strtok(str, " ");
    if (cmd == NULL)
    {
      continue;
    }

    /* treat the remaining string as the arguments,
     * which may need further parsing
     */
    char *args = cmd + strlen(cmd) + 1;
    if (args >= str_end)
    {
      args = NULL;
    }

#ifdef HAS_IOE
    extern void sdl_clear_event_queue();
    sdl_clear_event_queue();
#endif

    int i;
    for (i = 0; i < NR_CMD; i++)
    {
      if (strcmp(cmd, cmd_table[i].name) == 0)
      {
        if (cmd_table[i].handler(args) < 0)
        {
          return;
        }
        break;
      }
    }

    if (i == NR_CMD)
    {
      printf("Unknown command '%s'\n", cmd);
    }
  }
}
