#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int i=0;
char *b[6]={"大寄特寄","有点拉跨","凑合能活","感觉良好","芜湖起飞"};

int main()
{
	srand((int)time(0));
	i=rand()%6;
	printf( "今天你的运势是:%s\n",b[i]);
	system("pause");
	return 0;
}
