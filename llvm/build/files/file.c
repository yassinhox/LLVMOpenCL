#include <stdio.h>
#include <stdlib.h>

void foo(int c, float r, int* u, char* list)
{
	int sum = 0; 

	int buffer[2];
	char test = 'a';

	buffer[0] = 22;
	buffer[1] = 23;
}

// void foo()
// {
// 	int sum = 0; 
// 	int sum1 = 10; 
// 	int sum2 = 20; 

// 	int buffer[1];
// 	char test = 'a';

// 	buffer[0] = sum;
// 	buffer[1] = sum1;
// 	buffer[2] = sum2;
// }

// void foo()
// {
// 	int sum = 0;
// 	int* buffer = (int*) malloc(2*sizeof(int));

// 	buffer[0] = 22;
// 	buffer[1] = 23;
// 	buffer[2] = 24;
// }

// int main(int argc, char* arg[])
// {
// 	int* buffer = (int*) malloc(2*sizeof(int));

// 	buffer[0] = 22;
// 	buffer[1] = 23;
// 	buffer[2] = 24;

// 	return buffer[0] + buffer[1] + buffer[2];
// }