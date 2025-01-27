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
