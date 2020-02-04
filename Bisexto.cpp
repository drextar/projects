#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<locale.h>

main(){ 

int ano=0;

	printf("Digite o ano desejado ");
	scanf("%d",&ano);
	
	if ((ano % 4 == 0) && (ano % 100 != 0) || (ano % 400 == 0))
	  printf("O ano %d e bisexto", ano);
	else
	  printf("O ano %d NAO e bisexto", ano);
	  
}
