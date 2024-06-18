#include<stdio.h>
void main(){
int n;
printf("\nEnter n value:");
scanf("%d",&n);
printf("\nLoop rolling output:%d\n",countbit1(n));
printf("\nLoop unrolling output:%d\n",countbit2(n));
}
int countbit1(unsigned int n){
int bits = 0;
while(n!=0){
if(n & 1) bits++;
n >>=1;
}
return bits;
}
int countbit2(unsigned int n){
int bits = 0;
while(n!=0){
if(n & 1) bits++;
if(n & 2) bits++;
if(n & 4) bits++;
if(n & 8) bits++;
n >>=4;
}
return bits;
}