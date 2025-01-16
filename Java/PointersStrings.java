public class PointersStrings {
    public static void manipulateString(StringBuilder str) {
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (c >= 'a' && c <= 'z') {
                str.setCharAt(i, (char) (c - 32)); // Convert to uppercase
            }
        }
    }

    public static void main(String[] args) {
        StringBuilder str = new StringBuilder("hello world");
        manipulateString(str);
        System.out.println("String after manipulation: " + str);
    }
}
