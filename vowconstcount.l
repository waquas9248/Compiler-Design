%{
#include<stdio.h>
#include<string.h>
int vow_count=0,const_count=0;
%}
%%
[aeiouAEIOU]  {vow_count++;}
[a-zA-Z]  {const_count++;}
"\n" {printf("the number of vowels are: %d\n",vow_count);
printf("the number of consonants are: %d\n",const_count);}
%%
int yywrap(){}
int main(){
printf("Enter the string of vowels and consonants:");
yylex();
return 0;
}
