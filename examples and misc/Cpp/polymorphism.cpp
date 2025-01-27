#include <iostream>
using namespace std;

// Base class
class Animal {
public:
    virtual void speak() {
        cout << "Animal makes a sound." << endl;
    }
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
    Animal* animals[] = {new Dog(), new Cat()};
    for (Animal* animal : animals) {
        animal->speak();
    }
    return 0;
}
