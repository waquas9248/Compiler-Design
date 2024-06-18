%{
#include<stdio.h>
%}
oct [O|o][0-7]+
hex [O|o][X|x][0-9|A-F|a-f]+
id [A-Za-z][A-Za-z0-9]*
sym [!|@|#|$|^|&|(|)|~]+
num [0-9]+
op [+|-|*|/|=|%]+
%%
{oct} fprintf(yyout,"%s is an octal number \n",yytext);
{hex} fprintf(yyout,"%s is a hex number \n",yytext);
"if" |
"else" |
"while" |
"for" |
"main" fprintf(yyout,"%s is a keyword\n",yytext);

{id} fprintf(yyout,"%s is an identifier\n",yytext);
{sym} fprintf(yyout,"%s is a special symbol\n",yytext);
{num} fprintf(yyout,"%s is a number\n",yytext);
{op} fprintf(yyout,"%s is an operator\n",yytext);
%%
main()
{
yyin = fopen("in2.c","r");
yyout = fopen("out2.c","w");
yylex();
}
int yywrap()
{
return 0;
}
