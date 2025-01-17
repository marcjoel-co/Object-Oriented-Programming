#!/bin/bash

# Create directories for each language
mkdir -p C
mkdir -p Cpp
mkdir -p Python
mkdir -p Java

# C examples
cat << 'EOF' > C/complex_data_types.c
#include <stdio.h>
#include <stdlib.h>

// Structure to represent a complex number
typedef struct {
    double real;
    double imag;
} Complex;

int main() {
    // Create and initialize a complex number
    Complex c1 = {3.0, 4.0};
    printf("Complex number: %.2f + %.2fi\n", c1.real, c1.imag);

    return 0;
}
EOF

cat << 'EOF' > C/looping_through_array.c
#include <stdio.h>

int main() {
    // Array of integers
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);

    // Loop through the array and print each element
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}
EOF

# C++ examples
cat << 'EOF' > Cpp/complex_data_types.cpp
#include <iostream>
using namespace std;

// Class to represent a complex number
class Complex {
public:
    double real;
    double imag;

    Complex(double r, double i) : real(r), imag(i) {}

    void display() {
        cout << "Complex number: " << real << " + " << imag << "i" << endl;
    }
};

int main() {
    // Create and initialize a complex number
    Complex c1(3.0, 4.0);
    c1.display();

    return 0;
}
EOF

cat << 'EOF' > Cpp/looping_through_array.cpp
#include <iostream>
using namespace std;

int main() {
    // Array of integers
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);

    // Loop through the array and print each element
    for (int i = 0; i < size; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;

    return 0;
}
EOF

# Python examples
cat << 'EOF' > Python/complex_data_types.py
# Class to represent a complex number
class Complex:
    def __init__(self, real, imag):
        self.real = real
        self.imag = imag

    def display(self):
        print(f"Complex number: {self.real} + {self.imag}i")

# Create and initialize a complex number
c1 = Complex(3.0, 4.0)
c1.display()
EOF

cat << 'EOF' > Python/looping_through_array.py
# Array of integers
arr = [1, 2, 3, 4, 5]

# Loop through the array and print each element
for elem in arr:
    print(elem, end=" ")
print()
EOF

# Java examples
cat << 'EOF' > Java/ComplexDataTypes.java
public class ComplexDataTypes {
    // Class to represent a complex number
    static class Complex {
        double real;
        double imag;

        Complex(double r, double i) {
            real = r;
            imag = i;
        }

        void display() {
            System.out.println("Complex number: " + real + " + " + imag + "i");
        }
    }

    public static void main(String[] args) {
        // Create and initialize a complex number
        Complex c1 = new Complex(3.0, 4.0);
        c1.display();
    }
}
EOF

cat << 'EOF' > Java/LoopingThroughArray.java
public class LoopingThroughArray {
    public static void main(String[] args) {
        // Array of integers
        int[] arr = {1, 2, 3, 4, 5};

        // Loop through the array and print each element
        for (int elem : arr) {
            System.out.print(elem + " ");
        }
        System.out.println();
    }
}
EOF

echo "Complex data types and basic algorithms examples generated successfully!"