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

    static class Bird extends Animal {
        @Override
        void speak() {
            System.out.println("Bird chirps.");
        }
    }
    public static void main(String[] args) {
        Animal[] animals = {new Dog(), new Cat(), new Bird()};
        for (Animal animal : animals) {
            animal.speak();
        }
    }
}
