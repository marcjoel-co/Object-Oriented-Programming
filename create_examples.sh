#!/bin/bash

# Directories for each language
mkdir -p C
mkdir -p Java
mkdir -p Cpp

# C examples
cat << 'EOF' > C/hello_world.c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
EOF

cat << 'EOF' > C/data_types.c
#include <stdio.h>

int main() {
    int an_integer = 10;
    float a_float = 10.5;
    char a_character = 'A';

    printf("Integer: %d\n", an_integer);
    printf("Float: %.2f\n", a_float);
    printf("Character: %c\n", a_character);

    return 0;
}
EOF

cat << 'EOF' > C/conditionals.c
#include <stdio.h>

int main() {
    int x = 10;

    if (x > 5) {
        printf("x is greater than 5\n");
    } else {
        printf("x is not greater than 5\n");
    }

    return 0;
}
EOF

cat << 'EOF' > C/looping_structures.c
#include <stdio.h>

int main() {
    for (int i = 0; i < 5; i++) {
        printf("i = %d\n", i);
    }

    int j = 0;
    while (j < 5) {
        printf("j = %d\n", j);
        j++;
    }

    return 0;
}
EOF

cat << 'EOF' > C/functions.c
#include <stdio.h>

void print_hello() {
    printf("Hello from function!\n");
}

int main() {
    print_hello();
    return 0;
}
EOF

cat << 'EOF' > C/operations.c
#include <stdio.h>

int main() {
    int a = 10, b = 20;
    int sum = a + b;
    int diff = a - b;
    int product = a * b;
    int quotient = a / b;

    printf("Sum: %d\n", sum);
    printf("Difference: %d\n", diff);
    printf("Product: %d\n", product);
    printf("Quotient: %d\n", quotient);

    return 0;
}
EOF

# Java examples
cat << 'EOF' > Java/HelloWorld.java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
EOF

cat << 'EOF' > Java/DataTypes.java
public class DataTypes {
    public static void main(String[] args) {
        int anInteger = 10;
        float aFloat = 10.5f;
        char aCharacter = 'A';

        System.out.println("Integer: " + anInteger);
        System.out.println("Float: " + aFloat);
        System.out.println("Character: " + aCharacter);
    }
}
EOF

cat << 'EOF' > Java/Conditionals.java
public class Conditionals {
    public static void main(String[] args) {
        int x = 10;

        if (x > 5) {
            System.out.println("x is greater than 5");
        } else {
            System.out.println("x is not greater than 5");
        }
    }
}
EOF

cat << 'EOF' > Java/LoopingStructures.java
public class LoopingStructures {
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) {
            System.out.println("i = " + i);
        }

        int j = 0;
        while (j < 5) {
            System.out.println("j = " + j);
            j++;
        }
    }
}
EOF

cat << 'EOF' > Java/Functions.java
public class Functions {
    public static void printHello() {
        System.out.println("Hello from function!");
    }

    public static void main(String[] args) {
        printHello();
    }
}
EOF

cat << 'EOF' > Java/Operations.java
public class Operations {
    public static void main(String[] args) {
        int a = 10, b = 20;
        int sum = a + b;
        int diff = a - b;
        int product = a * b;
        int quotient = a / b;

        System.out.println("Sum: " + sum);
        System.out.println("Difference: " + diff);
        System.out.println("Product: " + product);
        System.out.println("Quotient: " + quotient);
    }
}
EOF

# C++ examples
cat << 'EOF' > Cpp/hello_world.cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
EOF

cat << 'EOF' > Cpp/data_types.cpp
#include <iostream>

int main() {
    int an_integer = 10;
    float a_float = 10.5f;
    char a_character = 'A';

    std::cout << "Integer: " << an_integer << std::endl;
    std::cout << "Float: " << a_float << std::endl;
    std::cout << "Character: " << a_character << std::endl;

    return 0;
}
EOF

cat << 'EOF' > Cpp/conditionals.cpp
#include <iostream>

int main() {
    int x = 10;

    if (x > 5) {
        std::cout << "x is greater than 5" << std::endl;
    } else {
        std::cout << "x is not greater than 5" << std::endl;
    }

    return 0;
}
EOF

cat << 'EOF' > Cpp/looping_structures.cpp
#include <iostream>

int main() {
    for (int i = 0; i < 5; i++) {
        std::cout << "i = " << i << std::endl;
    }

    int j = 0;
    while (j < 5) {
        std::cout << "j = " << j << std::endl;
        j++;
    }

    return 0;
}
EOF

cat << 'EOF' > Cpp/functions.cpp
#include <iostream>

void print_hello() {
    std::cout << "Hello from function!" << std::endl;
}

int main() {
    print_hello();
    return 0;
}
EOF

cat << 'EOF' > Cpp/operations.cpp
#include <iostream>

int main() {
    int a = 10, b = 20;
    int sum = a + b;
    int diff = a - b;
    int product = a * b;
    int quotient = a / b;

    std::cout << "Sum: " << sum << std::endl;
    std::cout << "Difference: " << diff << std::endl;
    std::cout << "Product: " << product << std::endl;
    std::cout << "Quotient: " << quotient << std::endl;

    return 0;
}
EOF

echo "Files generated successfully!"