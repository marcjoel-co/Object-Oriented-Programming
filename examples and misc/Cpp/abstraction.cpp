#include <iostream>
using namespace std;

// Abstract class
class Animal {
public:
    virtual void speak() = 0; // Pure virtual function
};

// Derived class
class Dog : public Animal {
public:
    void speak() override {
        cout << "Dog barks." << endl;
    }
};

// Derived class
class Cat : public Animal {
public:
    void speak() override {
        cout << "Cat meows." << endl;
    }
};

int main() {
    Animal* myDog = new Dog();
    Animal* myCat = new Cat();
    myDog->speak();
    myCat->speak();
    return 0;
}
