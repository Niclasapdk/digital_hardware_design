#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
uint32_t getImax(uint32_t x, uint8_t base);
uint8_t getBi(uint32_t x, uint8_t base, uint32_t i, uint32_t acc);
void convertBase(uint32_t x, uint8_t base) {
    printf("X = %u, base = %u\n", x, base);
    if(base > 16){
        printf("fuck off");
    return;
    }
    uint32_t acc = 0;
    for(uint8_t i = getImax(x,base); i > 0; i--){
        if(acc == x){
            break;
        }
        else if(acc > x){
            printf("oh forking");
            return;
        }
    uint32_t bi = getBi(x, base, i, acc); 
    acc += bi * (uint32_t)pow(base,i);
    printf("%u ", bi);
    } 
}

uint32_t getImax(uint32_t x, uint8_t base){
    uint32_t imax = 0;
    while((uint32_t)pow(base,imax) < x){
        imax++;
    }
    printf("imax %u\n", imax);
    return imax;
}
uint8_t getBi(uint32_t x, uint8_t base, uint32_t i, uint32_t acc){
    for(uint32_t bm =1; bm < base; bm++){
        if(bm * ((uint32_t)pow(base,i)) > x - acc){
            return bm - 1;
        }
    }
}
void main() {
    convertBase(4, 2);
}