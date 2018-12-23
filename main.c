#include <stdio.h>
#include <stdlib.h>

#include "random.h"
#include "types.h"

int main(int argc, const char ** argv) { 

    s16 min = 0;
    s16 max = 0x7ffe;
    u32 n = 10000;

    if (argc > 1) { 
        min = (s16)atoi(argv[1]);
    }
    if (argc > 2) { 
        max = (s16)atoi(argv[2]);
    }
    if (argc > 3) { 
        n = atoi(argv[3]);
    }

    random_state_t rand;

    random_init(&rand, 555, min, max);

    printf("\nX = [ ");
    for(u32 i=0; i<n; ++i) { 
        s16 x = random_next(&rand);
        printf("%d ", x);
    }
    printf(" ];\n");
}