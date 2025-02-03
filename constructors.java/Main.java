public class Main {
    public static void main(String[] args){
        Fruits orange = new Fruits("apple", "ABSFSFJK sfasf");
        // Constructors are __init__  

        // by default without defining a constuctor it is fruit() {} with no commands inside it
        /*orange.color = "green";
        orange.eat();
        System.out.println("The color of the orange is" + orange.color);
        System.out.println("The vitamins of the orange is" + orange.vitamins);
        */
        animals bruce = new animals("Crue", "bruce");
        /* System.out.println(bruce.name);
        */

        System.out.println(bruce.getType());

    }
}