#include "calcula_resto.h"

unsigned short numero_atual;

void noves_fora(unsigned int *numeros, int n){
    unsigned short * aux_short = (unsigned short*)numeros;
    unsigned char * aux_char = (unsigned char*)numeros;
    int aux_short_point = 0;
    for (int i = 1; i < n*2+1; i=i+2){
        numero_atual = *(aux_short + i);
        *(aux_char + aux_short_point) = calcula_resto();
        aux_short_point+=4;
    }
}