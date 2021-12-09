#include <stdio.h>
#include "noves_fora.h"

int main(void) {
	unsigned int numeros [10] = {0x0B0F0000, 0x0C0A0000, 0x0B080000, 0x07100000, 0x0F120000,
0xF0E10000, 0x0B0F0000, 0x0A0B0000, 0x0F100000, 0x090F0000};
    noves_fora(numeros, 10);
    unsigned short * aux_short = (unsigned short*)numeros;
    unsigned char * aux_char = (unsigned char*)numeros;
    int aux_short_point = 0;
    for (int i = 1; i < 10*2+1; i=i+2){
        printf("Número: %u; Resto: %hhd\n", *(aux_short + i), *(aux_char + aux_short_point));
        aux_short_point+=4;
    }
}