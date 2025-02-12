public class HelloWorld
{
    public static void main(String[] args)
    {
        System.out.print("Hello World\n");
        int power = 1;
        for (int i = 0; i <= 5; i++)
        {
            System.out.print( "On the " + i + "'th loop " + power + "\n");
            power = 2 * power;
        }
    }
}