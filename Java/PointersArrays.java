public class PointersArrays {
    public static void manipulateArray(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            arr[i] *= 2;
        }
    }

    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5};
        manipulateArray(arr);

        System.out.print("Array after manipulation: ");
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}