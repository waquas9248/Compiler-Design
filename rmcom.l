%{
#include<stdio.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
int yywrap(){}
int main(int k,char **argcv)
{
yyin=fopen("in.c","r");
yyout=fopen("out1.c","w");
yylex();
return 0;
}
