public class Encapsulation {
    static class Animal {
        private String name;
        private int age;

        // Constructor
        Animal(String n, int a) {
            name = n;
            age = a;
        }

        // Getter for name
        String getName() {
            return name;
        }

        // Setter for name
        void setName(String n) {
            name = n;
        }

        // Getter for age
        int getAge() {
            return age;
        }

        // Setter for age
        void setAge(int a) {
            age = a;
        }
    }

    public static void main(String[] args) {
        Animal dog = new Animal("Buddy", 3);
        System.out.println("Name: " + dog.getName() + ", Age: " + dog.getAge());
        dog.setName("Max");
        dog.setAge(4);
        System.out.println("Updated Name: " + dog.getName() + ", Updated Age: " + dog.getAge());
    }
}
