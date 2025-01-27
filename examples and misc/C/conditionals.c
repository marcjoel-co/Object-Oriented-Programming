#include <stdio.h> // Include the standard input/output library

int main() { // Main function
    int x = 10; // Declare an integer variable x and assign it the value 10
                // Note: In C, variables must be declared at the beginning of a block
                // declaration: type name;
    if (x > 5) { // conditional statement
        printf("x is greater than 5\n"); 
    } else {  
        printf("x is not greater than 5\n");
    }

    return 0;
}

/* initialization vs declaration vs assignment
* int x;      // declaration
* int x = 10; // initialization
* x = 20;     // assignment
*
*

*/
