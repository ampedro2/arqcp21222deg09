#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    int n1=10;
    int n2=1;
    while(sum(n1,n2)>10){
        scanf("%d",&n1);
        scanf("%d",&n2);
        printf("A soma dos números é %d\n", sum(n1, n2));
    }
    printf("A soma dos números é menor que 10.");
    return 0;
} 


