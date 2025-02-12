public class Abstraction {
    // Abstracts class
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
