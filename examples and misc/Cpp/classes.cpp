#include <iostream>
using namespace std;

// Define a class
class Animal {
public:
    string name;
    int age;

    // Constructor
    Animal(string n, int a) : name(n), age(a) {}

    // Method
    void speak() {
        cout << name << " says hello!" << endl;
    }
};

int main() {
    // Create an instance of Animal
    Animal dog("Buddy", 3);
    dog.speak();
    return 0;
}
