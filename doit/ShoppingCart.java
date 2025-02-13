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
}
