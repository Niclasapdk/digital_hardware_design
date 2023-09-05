#include <stdint.h>
#include <stdio.h>

// WARNING: italian spaghetti ahead

//#define DEBUG

uint32_t getImax(uint32_t x, uint8_t base);
uint8_t getBi(uint32_t x, uint8_t base, uint32_t i, uint32_t acc);

uint32_t powu(uint8_t base, uint32_t exponent) {
    uint32_t result = 1;

    for (int i=0; i<exponent; i++)
        result *= base;

    return result;
}

void convertBase(uint32_t x, uint8_t base) {
    printf("x = %u, base = %u\n", x, base);
    if(base > 16){
        printf("fuck off");
    return;
    }
    uint32_t acc = 0;
    for(int8_t i = getImax(x,base); i >= 0; i--){
        if(acc == x){
            printf("0 ");
            if (i == 0)
                break;
        }
        else if(acc > x) {
            printf("oh forking");
            return;
        }
    uint32_t bi = getBi(x, base, i, acc); 
    acc += bi * powu(base, i);
#ifdef DEBUG
    printf("bi=%u, acc=%u\n", bi, acc);
#endif
    if (bi > 9)
        printf("%c", bi+0x61-10);
    else
        printf("%u", bi);
    } 
    printf("\n");
}

uint32_t getImax(uint32_t x, uint8_t base){
    uint32_t imax = 0;
    while(powu(base,imax) < x){
        imax++;
    }
#ifdef DEBUG
    printf("imax %u\n", imax);
#endif
    if (powu(base, imax) == x)
        return imax;
#ifdef DEBUG
    printf("imax-1 %u\n", imax-1);
#endif
    return imax - 1;
}

uint8_t getBi(uint32_t x, uint8_t base, uint32_t i, uint32_t acc){
    for(uint32_t bm = 0; bm < base; bm++){
        uint32_t xi = bm * powu(base,i);
#ifdef DEBUG
            printf("xi: %u\n", xi);
#endif
        if(xi > x - acc) {
            return bm-1;
        }
        else if(xi == x - acc) {
            return bm;
        }
        if (bm == base-1)
            return bm;
    }
    return 0;
}

int main() {
    convertBase(7, 3);
    convertBase(0x8f, 16);
    convertBase(99, 10);
    convertBase(33, 11);
}
