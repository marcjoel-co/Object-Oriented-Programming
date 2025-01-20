public class Inheritance {
    // Base class
    static class Animal {
        String name;
        int age;
        int amountOfAction;
        Animal(String n, int a, int act) { // Constructor
            name = n;
            age = a;
            amountOfAction = act;
        }

            void speak() { // Method

            for (int i = 0; i < amountOfAction; i++) {
                System.out.println(name + " makes a sound.");
            }
        }   

    }

    // Derived class
    static class Dog extends Animal {
        Dog(String n, int a, int act) {
            super(n, a, act);
        }

        @Override
        void speak() {
              for (int i = 0; i < act; i++) {
                System.out.println(name + " makes a bark.");
            }
        }
    }

    

    public static void main(String[] args) {
        Dog myDog = new Dog("Buddy", 3, 5);
        myDog.speak();
    }
}
