#include <stdio.h>

// Function to manipulate an array using pointers
/**
 * Manipulates the elements of the given array by doubling their values.
 *
 * @param arr The array to be manipulated.
 * @param size The size of the array.
 */
void manipulate_array(int* arr, int size) { 
    for (int i = 0; i < size; i++) {
        arr[i] *= 2;
    }
}

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);
    manipulate_array(arr, size);

    printf("Array after manipulation: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;   
}
