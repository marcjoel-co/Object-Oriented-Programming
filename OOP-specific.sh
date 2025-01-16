#!/bin/bash

# Create directories for each language
mkdir -p Cpp
mkdir -p Java
mkdir -p Python

# C++ examples
cat << 'EOF' > Cpp/classes.cpp
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
EOF

cat << 'EOF' > Cpp/inheritance.cpp
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
EOF

cat << 'EOF' > Cpp/polymorphism.cpp
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
EOF

cat << 'EOF' > Cpp/encapsulation.cpp
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
EOF

cat << 'EOF' > Cpp/abstraction.cpp
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
EOF

# Java examples
cat << 'EOF' > Java/Classes.java
public class Classes {
    // Define a class
    static class Animal {
        String name;
        int age;

        // Constructor
        Animal(String n, int a) {
            name = n;
            age = a;
        }

        // Method
        void speak() {
            System.out.println(name + " says hello!");
        }
    }

    public static void main(String[] args) {
        // Create an instance of Animal
        Animal dog = new Animal("Buddy", 3);
        dog.speak();
    }
}
EOF

cat << 'EOF' > Java/Inheritance.java
public class Inheritance {
    // Base class
    static class Animal {
        String name;
        int age;

        Animal(String n, int a) {
            name = n;
            age = a;
        }

        void speak() {
            System.out.println(name + " makes a sound.");
        }
    }

    // Derived class
    static class Dog extends Animal {
        Dog(String n, int a) {
            super(n, a);
        }

        @Override
        void speak() {
            System.out.println(name + " barks.");
        }
    }

    public static void main(String[] args) {
        Dog myDog = new Dog("Buddy", 3);
        myDog.speak();
    }
}
EOF

cat << 'EOF' > Java/Polymorphism.java
public class Polymorphism {
    // Base class
    static class Animal {
        void speak() {
            System.out.println("Animal makes a sound.");
        }
    }

    // Derived class
    static class Dog extends Animal {
        @Override
        void speak() {
            System.out.println("Dog barks.");
        }
    }

    // Derived class
    static class Cat extends Animal {
        @Override
        void speak() {
            System.out.println("Cat meows.");
        }
    }

    public static void main(String[] args) {
        Animal[] animals = {new Dog(), new Cat()};
        for (Animal animal : animals) {
            animal.speak();
        }
    }
}
EOF

cat << 'EOF' > Java/Encapsulation.java
public class Encapsulation {
    static class Animal {
        private String name;
        private int age;

        // Constructor
        Animal(String n, int a) {
            name = n;
            age = a;
        }

        // Getter for name
        String getName() {
            return name;
        }

        // Setter for name
        void setName(String n) {
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
    }

    public static void main(String[] args) {
        Animal dog = new Animal("Buddy", 3);
        System.out.println("Name: " + dog.getName() + ", Age: " + dog.getAge());
        dog.setName("Max");
        dog.setAge(4);
        System.out.println("Updated Name: " + dog.getName() + ", Updated Age: " + dog.getAge());
    }
}
EOF

cat << 'EOF' > Java/Abstraction.java
public class Abstraction {
    // Abstract class
    abstract static class Animal {
        abstract void speak(); // Abstract method
    }

    // Derived class
    static class Dog extends Animal {
        @Override
        void speak() {
            System.out.println("Dog barks.");
        }
    }

    // Derived class
    static class Cat extends Animal {
        @Override
        void speak() {
            System.out.println("Cat meows.");
        }
    }

    public static void main(String[] args) {
        Animal myDog = new Dog();
        Animal myCat = new Cat();
        myDog.speak();
        myCat.speak();
    }
}
EOF

# Python examples
cat << 'EOF' > Python/classes.py
# Define a class
class Animal:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    # Method
    def speak(self):
        print(f"{self.name} says hello!")

# Create an instance of Animal
dog = Animal("Buddy", 3)
dog.speak()
EOF

cat << 'EOF' > Python/inheritance.py
# Base class
class Animal:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def speak(self):
        print(f"{self.name} makes a sound.")

# Derived class
class Dog(Animal):
    def speak(self):
        print(f"{self.name} barks.")

# Create an instance of Dog
my_dog = Dog("Buddy", 3)
my_dog.speak()
EOF

cat << 'EOF' > Python/polymorphism.py
# Base class
class Animal:
    def speak(self):
        print("Animal makes a sound.")

# Derived class
class Dog(Animal):
    def speak(self):
        print("Dog barks.")

# Derived class
class Cat(Animal):
    def speak(self):
        print("Cat meows.")

# Demonstrate polymorphism
animals = [Dog(), Cat()]
for animal in animals:
    animal.speak()
EOF

cat << 'EOF' > Python/encapsulation.py
class Animal:
    def __init__(self, name, age):
        self.__name = name  # Private attribute
        self.__age = age    # Private attribute

    # Getter for name
    def get_name(self):
        return self.__name

    # Setter for name
    def set_name(self, name):
        self.__name = name

    # Getter for age
    def get_age(self):
        return self.__age

    # Setter for age
    def set_age(self, age):
        self.__age = age

# Create an instance of Animal
dog = Animal("Buddy", 3)
print(f"Name: {dog.get_name()}, Age: {dog.get_age()}")
dog.set_name("Max")
dog.set_age(4)
print(f"Updated Name: {dog.get_name()}, Updated Age: {dog.get_age()}")
EOF

cat << 'EOF' > Python/abstraction.py
from abc import ABC, abstractmethod

# Abstract class
class Animal(ABC):
    @abstractmethod
    def speak(self):
        pass

# Derived class
class Dog(Animal):
    def speak(self):
        print("Dog barks.")

# Derived class
class Cat(Animal):
    def speak(self):
        print("Cat meows.")

# Create instances of Dog and Cat
my_dog = Dog()
my_cat = Cat()
my_dog.speak()
my_cat.speak()
EOF

echo "OOP example files generated successfully!"