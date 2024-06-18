#include<stdio.h>
#include<ctype.h>
#include<string.h>
void Tprime();
void Eprime();
void E();
void F();
void T();
char expression[10];
int count,flag;
int main(){
count =0;
flag=0;
printf("Enter an Algebraic Expression:\t");
scanf("%s",expression);
E();
if((strlen(expression)==count) && (flag==0)){
        printf("\n The Expression %s is Valid\n",expression);
}
else{
printf("\n The Expression is %s is Invalid\n",expression);
}
}
void E(){
T();
Eprime();
}
void T(){
F();
Tprime();
}
void Tprime(){
if(expression[count]=='*'){
count++;
F();
Tprime();
}
}
void F(){
if(isalnum(expression[count])){
count++;
}
else if(expression[count]== '('){
count++;
E();
    if(expression[count]==')'){
        count++;
    }
    else{
        flag=1;
    }
}
else{
flag=1;
}
}

void Eprime(){
if(expression[count]=='+'){
count++;
T();
Eprime();
}
}