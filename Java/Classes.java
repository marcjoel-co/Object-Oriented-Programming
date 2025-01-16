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
