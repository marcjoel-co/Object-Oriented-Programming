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
