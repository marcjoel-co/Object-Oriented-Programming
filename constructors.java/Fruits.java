public class Fruits {

    public String color;
    public String vitamins;
    // a constructor first hand, it starts everytime amn object of a type is created
    Fruits (String color, String vitamins) {
     this.color = color;
     this.vitamins = vitamins;

    }

    void eat() {
        System.out.println("Omnonmn");
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setVitamins(String vitamins){
        this.vitamins = vitamins;
    }

    public void getColor() {
        System.out.println(this.color);
    }
    public void getVitamins() {
        System.out.println(this.vitamins);
    }
}

/*
 * access modifiers public, private default and protected
 * - private - only allows access within the file  
 *  - public - allows access within other files 
 */

 // Create setters and getters
 // set value 
 // get value