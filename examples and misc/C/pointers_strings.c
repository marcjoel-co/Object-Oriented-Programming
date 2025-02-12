#include <stdio.h>
#include <ctype.h>

// Function to manipulate a string using pointers
void manipulate_string(char* str) {
    while (*str) {
        *str = toupper(*str);
        str++;
    }
}

int main() {
    char str[] = "hello world";
    manipulate_string(str);

    printf("String after manipulation: %s\n", str);
    return 0;
}
