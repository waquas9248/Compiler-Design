%{
#include<stdio.h>
int lc=0,sc=0,tc=0,ch=0;
%}
%%
\n {lc++;}
([ ])+ {sc++;}
\t {tc++;}
. {ch++;}
%%
int yywrap(){}
int main()
{
yylex();
printf("\n No.of Lines = %d",lc);
printf("\n No.of Spaces=%d",sc);
printf("\n No.of Tabs=%d",tc);
printf("\n No.of other characters=%d\n",ch);
}
