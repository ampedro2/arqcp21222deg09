#include <stdio.h>
#include "asm.h"

int code;
int currentSalary;

int main(void) {
    printf("Code: ");
    scanf("%d", &code);
    printf("Salary: ");
    scanf("%d", &currentSalary);
    printf("Result: %d\n", new_salary());
    return 0;
}
