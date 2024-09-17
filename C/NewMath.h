int fac(int x); 
double pw(double x,int y);

int fac(int x)
{
	int i,fac=1;
	for(i=1;i<x;i++)
	{
		fac*=i+1;
	}
	return fac;	
} 

double pw(double x,int y)
{
	int i;
	double pow=x;
	for(i=1;i<y;i++)
	{
		pow*=x;
	}
	return pow;
}
