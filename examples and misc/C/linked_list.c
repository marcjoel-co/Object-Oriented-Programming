#include <stdlib.h>
#include <stdio.h>


/**
 * Represents a node in a singly-linked list.
 *
 * @struct node
 * @brief A node in a singly-linked list, containing an integer value and a pointer to the next node.
 * @member value The integer value stored in the node.
 * @member next A pointer to the next node in the list, or NULL if this is the last node.
 */
typedef struct node {
    int value;
    struct node* next;
} node_t;

/**
 * Prints the values of all nodes in a singly-linked list.
 *
 * @param head A pointer to the head (first) node in the list.
 */
void printlist(node_t* head) {
    node_t* temporary = head;
    while (temporary != NULL) {
        printf("%d - ", temporary->value);
        temporary = temporary->next;
    }
    printf("\n");
}


int main() {
    node_t n1, n2, n3;
    node_t* head;

    n1.value = 45;
    n2.value = 100;
    n3.value = 1000;

    //link them up
    head = &n3;
    n3.next = &n2;
    n2.next = &n1;
    n1.next = NULL; //end of the list

    printlist(head);
    return 0;
}