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
