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
