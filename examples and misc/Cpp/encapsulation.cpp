#include <iostream>
using namespace std;

class Animal {
private:
    string name;
    int age;

public:
    // Constructor
    Animal(string n, int a) : name(n), age(a) {}

    // Getter for name
    string getName() {
        return name;
    }

    // Setter for name
    void setName(string n) {
        name = n;
    }

    // Getter for age
    int getAge() {
        return age;
    }

    // Setter for age
    void setAge(int a) {
        age = a;
    }
};

int main() {
    Animal dog("Buddy", 3);
    cout << "Name: " << dog.getName() << ", Age: " << dog.getAge() << endl;
    dog.setName("Max");
    dog.setAge(4);
    cout << "Updated Name: " << dog.getName() << ", Updated Age: " << dog.getAge() << endl;
    return 0;
}
