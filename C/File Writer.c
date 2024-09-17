#include <stdio.h>
#include <string.h>

int main()
{

	char string[255]=""; 
	char path[255]="";
	printf("input the path:");
	scanf("%s",&path);
	FILE *fp=fopen(path,"a+");
	printf("input the string:");
	scanf("%s",&string);
	fseek(fp,0,SEEK_END);
	fwrite(string,strlen(string),1,fp);
	fseek(fp,0,SEEK_SET);
	fread(string,strlen(string),1,fp);
	printf("String has put:%s",string);
	fclose(fp);
	return 0;
}
