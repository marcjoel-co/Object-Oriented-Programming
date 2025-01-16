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
