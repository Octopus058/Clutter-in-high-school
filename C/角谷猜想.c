#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

int main(void)
{
	int num=0;
	int i=0;
	char str[100];
	printf("input a number:") ;
	scanf("%d",&num);
	while(num!=1)
	{
	itoa(num,str,2);
	printf("第%d个数是%d二进制%s\n",i+1,num,str);
	usleep(300000);
	i++;
	if(num%2==0)
	{
		num=num/2;
	}
	else if(num%2!=0)
	{
		num=num*3+1;
	}
	}
	printf("第%d个数是1二进制0\n",i+1);
	printf("共执行%d次",i);
	return 0;
}
