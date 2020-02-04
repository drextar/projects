#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<locale.h>

main(){ 

	for(int i=1 ; i<=100 ; i++) { 
		if (i % 3 ==0 && i % 5  == 0)  
          printf("FizzBuzz\n");

        else if ((i % 3) == 0)
          printf("Fizz\n");

        else if ((i % 5) == 0) 
          printf("Buzz\n"); 
        else 
          printf("%d\n", i);
    } 
}
