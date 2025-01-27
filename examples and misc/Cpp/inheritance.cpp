#include <iostream>
using namespace std;

// Base class
class Animal {
public:
    string name;
    int age;

    Animal(string n, int a) : name(n), age(a) {}

    void speak() {
        cout << name << " makes a sound." << endl;
    }
};

// Derived class
class Dog : public Animal {
public:
    Dog(string n, int a) : Animal(n, a) {}

    void speak() {
        cout << name << " barks." << endl;
    }
};

int main() {
    Dog myDog("Buddy", 3);
    myDog.speak();
    return 0;
}
