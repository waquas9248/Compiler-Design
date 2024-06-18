%{
#include<ctype.h>
#include<stdio.h>
%}
%token NUM

%%
cmd:E           {printf("%d\n",$1);}

E  :E '+' T     {$$ = $1 + $3;}
    |T             {$$ = $1;}
    ;
T  :T '*' F     {$$ = $1 * $3;}
    |F          {$$ = $1;}
    ;
F  :'(' E ')'   {$$ = $2;}
    |NUM       {$$ = $1;}
    ;
%%
main()
{
return yyparse();
}
int yylex(void){
int c;
while((c=getchar())==' ');
/*eliminate blanks*/
if(isdigit(c))
{
ungetc(c,stdin);
scanf("%d",&yylval);
return(NUM);
}
if(c=='\n')
return 0;
/*makes the parse stop*/
return(c);
}
int yyerror(char * s)
{
fprintf(stderr,"%s\n",s);
return 0;
}
