#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <locale.h>

int a[20];
char *b[8]={"STR:","CON:","DEX:","APP:","INT:","POW:","EDU:"};
int i,j,k;

int main()
{
 srand((int)time(0));
 a[0]=rand()%51+30;
 for(i=0;i<8;i++)
 {
  a[i]=rand()%51+30;
  for(j=0;j<i;j++)
  {
   if(a[i]==a[j])
   {
    i--;
   }
  }
 }
 for(i=0;i<7;i++)
 {
	k=a[i]%5;
	a[i]=a[i]-k;
    printf("%s%d\n",b[i],a[i]);
 }
 system("pause");
}
