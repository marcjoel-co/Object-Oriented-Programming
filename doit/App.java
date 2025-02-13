public class App
{
    public static void main(String[] args)
    {
    double[] item1 = {20, 30, 40, 50};
    double[] item2 = {10, 20, 30, 40, 50};
    double[] item3 = {};
    double[] item4 = {40};


    ShoppingCart.displayCartSummary("Alice", item1);
    ShoppingCart.displayCartSummary("Bob", item2);
    ShoppingCart.displayCartSummary("Charlie", item3);
    ShoppingCart.displayCartSummary("David", item4);
    }
}