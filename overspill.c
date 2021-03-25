#include <stdio.h>
#include <conio.h>
#include <string.h>

int main(void)
{
	char buff[128];
	int pass = 0;
	printf("\nEnter the Password : \n");
	gets(buff);
	
	if(strcmp(buff, "1cbfb724ceee46cd879df7c7cfbe7dca"))
	{
		printf("\nWrong Password\n");
	}
	else
	{
		printf("\nCorrect Password\n");
		pass = 1;
	}

if(pass)
{
	/* Overflowed */
	printf("\nihack{b4d_c0d3}\n");
}
return 0;
}
