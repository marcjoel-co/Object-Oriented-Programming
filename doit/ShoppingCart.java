public class  ShoppingCart
{

    public static double calculateTotalPrice(double[]cart) 
    {
        double totalPrice = 0;
        for (int i = 0; i < cart.length; i++)
        {
            totalPrice += cart[i];

            
        }
        return totalPrice;
    }

    public static double applyDiscount(double[] cart)
    {
        double totalPrice = calculateTotalPrice(cart);
        double discount = 0.1;
        if (totalPrice > 100)
        {
        System.out.println("You get a 10% discount");
         return totalPrice - totalPrice * discount;
        }   

        return totalPrice;
    }

    public static void displayCartSummary(String name, double[] cart) 
    {
        System.out.println("Costumer" + name);
        System.out.println("number of items: " + cart.length);
        System.out.println("Total price before discount: $" + calculateTotalPrice(cart));

        System.out.println("Total price after discount: $" + applyDiscount(cart));
        System.out.println("\n");


        
    }
    public static void optionMenu()
    {
        System.out.println("Choose an option: ");
        System.out.println("1. Define amount of itemcart for user");
        System.out.println("2. Define name of user");
        System.out.println("3. Define price of item");
        System.out.println("4. Exit");
        System.out.println("Without anyother defaults to exit");
    }
}