public class Classes { // should be identical to the file name
    // Define a class 
    static class Animal { 
        String name; 
        int age; 

        // Constructor is special because it is called when an instance of the class is created
        Animal(String n, int a) {
            name = n;
            age = a;
        }

        // Method
        void speak() { 
            System.out.println(name + " says hello!");
        }
    }

    public static void main(String[] args) // there is still an entry point in the program
        // Create an instance of Animal
        Animal dog = new Animal("Buddy", 3);
        dog.speak();
    }
}
