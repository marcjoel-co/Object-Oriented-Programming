#include <stdio.h>

int main() {                            // 1st loop       // 2nd loop       // 3rd loop   // 4th loop    // 5th loop
    for (int i = 0; i < 5; i++) {       // i = 0          // i = 1          // i = 2      // i = 3       // i = 4
        printf("i has the value of %d\n", i);
    }                                   // i has the value of 0
                                        // i has the value of 1
                                        // i has the value of 2
                                        // i has the value of 3
                                        // i has the value of 4

    int j = 0;
    while (j < 5) { 
        printf("j = %d\n", j);
        j++;    // j++ means J + 1 meaning this starts 
    }           // at 0 and goes up to 4
    

    return 0;
}
