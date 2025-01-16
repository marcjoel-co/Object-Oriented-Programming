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
