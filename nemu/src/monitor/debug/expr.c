#include <isa.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <regex.h>
#include <stdlib.h>

enum
{
  TK_NOTYPE = 256,
  TK_EQ,

  /* TODO: Add more token types */
  NUM,
  REG,
  SYMB,
  VAR,
  HEX,

};

static struct rule
{
  char *regex;
  int token_type;
} rules[] = {

    /* TODO: Add more rules.
   * Pay attention to the precedence level of different rules.
   */

    {" +", TK_NOTYPE}, // spaces
    {"\\+", '+'},      // plus
    {"==", TK_EQ},     // equal
    {"0[xX][0-9a-fA-F]+", HEX},
    {"$[a-fA-F]+", REG},
    {"[0-9]{1,10}", NUM},
    {"-", '-'},
    {"\\*", '*'},
    {"\\/", '/'},
    {"\\(", '('},
    {"\\)", ')'},
    {"[a-zA-Z_][a-zA-Z0-9_]+", VAR}};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]))

static regex_t re[NR_REGEX] = {};

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex()
{
  int i;
  char error_msg[128];
  int ret;

  for (i = 0; i < NR_REGEX; i++)
  {
    ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
    if (ret != 0)
    {
      regerror(ret, &re[i], error_msg, 128);
      panic("regex compilation failed: %s\n%s", error_msg, rules[i].regex);
    }
  }
}

typedef struct token
{
  int type;
  char str[32];
} Token;

static Token tokens[32] __attribute__((used)) = {};
static int nr_token __attribute__((used)) = 0;

static bool make_token(char *e)
{
  int position = 0;
  int i;
  regmatch_t pmatch;

  nr_token = 0;

  while (e[position] != '\0')
  {
    /* Try all rules one by one. */
    for (i = 0; i < NR_REGEX; i++)
    {
      if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0)
      {
        char *substr_start = e + position;
        int substr_len = pmatch.rm_eo;

        Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s",
            i, rules[i].regex, position, substr_len, substr_len, substr_start);

        position += substr_len;

        /* TODO: Now a new token is recognized with rules[i]. Add codes
         * to record the token in the array `tokens'. For certain types
         * of tokens, some extra actions should be performed.
         */

        switch (rules[i].token_type)
        {
        case TK_NOTYPE:
          break;
        default:
          tokens[nr_token].type = rules[i].token_type;
          int j = 0;
          for (; j < substr_len; ++j)
            tokens[nr_token].str[j] = *(substr_start + j);
          tokens[nr_token].str[j] = '\0';
          nr_token++;
        }

        break;
      }
    }

    if (i == NR_REGEX)
    {
      printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
      return false;
    }
  }

  return true;
}

static bool check_parentheses(int s, int e)
{
  if (tokens[s].type == '(' && tokens[e].type == ')')
    return true;

  return false;
}

static bool valid_parentheses(int s, int e)
{
  bool success = true;
  //step 1: check lexical exception
  for (int i = s; i <= e; i++)
  {
    if (i > s && (tokens[i].type == NUM || tokens[i].type == HEX || tokens[i].type == VAR || tokens[i].type == REG) && tokens[i - 1].type == ')')
      return false;

    if (i < e && (tokens[i].type == NUM || tokens[i].type == HEX || tokens[i].type == VAR || tokens[i].type == REG) && tokens[i + 1].type == '(')
      return false;
  }

  //step 2: check valid parentheses
  int length = 0;
  for (int i = s; i <= e; ++i)
  {
    {
      if (tokens[i].type == '(' || tokens[i].type == ')')
        length++;
    }
  }

  if (length % 2)
    return false;
  int stk[length + 1], top = 0;
  for (int i = s; i <= e; i++)
  {
    if (tokens[i].type != ')' && tokens[i].type != '(')
      continue;

    char ch;
    if (tokens[i].type == ')')
      ch = '(';
    else
      ch = 0;

    if (ch)
    {
      if (top == 0 || stk[top - 1] != ch)
        return false;
      top--;
    }
    else
    {
      stk[top++] = tokens[i].type;
    }
  }
  if (top != 0)
    return false;

  return success;
}

static int dominant_op(int s, int e)
{
  int type_stack[e - s + 2];
  int idx_stack[e - s + 2];

  int top = 0;
  for (int i = s; i <= e; i++)
  {
    char ch;
    if (tokens[i].type == ')')
      ch = '(';
    else
      ch = 0;

    if (ch)
    {
      for (int j = top - 1; j >= 0; --j)
      {
        bool close = (type_stack[j] == '(');
        type_stack[j] = 0;
        idx_stack[j] = INT32_MIN;
        top--;
        if (close)
        {
          break;
        }
      }
    }
    else
    {
      type_stack[top] = tokens[i].type;
      idx_stack[top] = i;
      top++;
    }
  }

  for (int i = top - 1; i >= 0; --i)
  {
    if (type_stack[i] == '+')

      return idx_stack[i];
  }

  for (int i = top - 1; i >= 0; --i)
  {
    if (type_stack[i] == '-')

      return idx_stack[i];
  }

  for (int i = top - 1; i >= 0; --i)
  {
    if (type_stack[i] == '*' || type_stack[i] == '/')

      return idx_stack[i];
  }

  for (int i = top - 1; i >= 0; --i)
  {
    if (type_stack[i] == TK_EQ)

      return idx_stack[i];
  }

  return 0;
}

static word_t eval(int s, int e, bool *success)
{
  word_t val = 0;
  if (s > e)
  {
    printf("eval ERROR: start position is greater than end\n");
    *success = false;
    return 0;
  }
  else if (s == e)
  {
    if (tokens[s].type == NUM)
    {
      val = atoi(tokens[s].str);
    }
    else if (tokens[s].type == VAR)
    {
      //val = get_varible(tokens[s].str, success);
      printf("eval ERROR: Eval for VAR is not implemented.\n");
      assert(0);
    }
    else if (tokens[s].type == REG)
    {
      //val = get_varible(tokens[s].str, success);
      printf("eval ERROR: Eval for REG is not implemented.\n");
      assert(0);
    }

    else if (tokens[s].type == HEX)
    {
      val = (word_t)strtoul(tokens[s].str, NULL, 0);
    }
  }
  else
  {

    if (tokens[s].type == '-')
    {
      val = -1 * eval(s + 1, e, success);
    }

    else
    {

      bool within_p = check_parentheses(s, e);

      if (within_p == true)
        val = eval(s + 1, e - 1, success);
      else
      {
        int op = dominant_op(s, e);

        // op = the position of dominant operator in the token expression;
        word_t val1 = eval(s, op - 1, success);
        word_t val2 = eval(op + 1, e, success);
        // val2 = eval(op + 1, q);
        switch (tokens[op].type)
        {
        case '+':
          val = val1 + val2;
          break;
        case '-':
          val = val1 - val2;
          break;
        case '*':
          val = val1 * val2;
          break;
        case '/':
          if(val2==0){
            printf("eval ERROR: Divided by 0.\n");
            *success = false;
            return 0;
          }
          val = val1 / val2;
          break;
        case TK_EQ:
          val = (val1 == val2);
          break;

        default:
          printf("eval ERROR: Eval for %d is not implemented.\n", tokens[op].type);
          *success = false;
          return 0;
        }
      }
    }
  }
  return val;
}

word_t expr(char *e, bool *success)
{
  if (!make_token(e) && valid_parentheses(0, nr_token - 1))
  {
    *success = false;
    return 0;
  }

  word_t val = eval(0, nr_token - 1, success);

  // /* TODO: Insert codes to evaluate the expression. */
  // TODO();

  return val;
}
