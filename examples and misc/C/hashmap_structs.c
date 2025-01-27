#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Define a struct to represent a hashmap entry
struct HashMapEntry {
    char key[50];
    int value;
    struct HashMapEntry* next;
};

// Function to create a new hashmap entry
struct HashMapEntry* create_entry(const char* key, int value) {
    struct HashMapEntry* entry = (struct HashMapEntry*)malloc(sizeof(struct HashMapEntry));
    strcpy(entry->key, key);
    entry->value = value;
    entry->next = NULL;
    return entry;
}

// Function to add an entry to the hashmap
void add_entry(struct HashMapEntry** hashmap, const char* key, int value) {
    struct HashMapEntry* entry = create_entry(key, value);
    entry->next = *hashmap;
    *hashmap = entry;
}

// Function to find an entry in the hashmap
struct HashMapEntry* find_entry(struct HashMapEntry* hashmap, const char* key) {
    struct HashMapEntry* current = hashmap;
    while (current != NULL) {
        if (strcmp(current->key, key) == 0) {
            return current;
        }
        current = current->next;
    }
    return NULL;
}

// Function to print the hashmap
void print_hashmap(struct HashMapEntry* hashmap) {
    struct HashMapEntry* current = hashmap;
    while (current != NULL) {
        printf("Key: %s, Value: %d\n", current->key, current->value);
        current = current->next;
    }
}

int main() {
    struct HashMapEntry* hashmap = NULL;
    add_entry(&hashmap, "apple", 1);
    add_entry(&hashmap, "banana", 2);
    add_entry(&hashmap, "cherry", 3);

    print_hashmap(hashmap);

    struct HashMapEntry* entry = find_entry(hashmap, "banana");
    if (entry != NULL) {
        printf("Found entry: Key: %s, Value: %d\n", entry->key, entry->value);
    } else {
        printf("Entry not found.\n");
    }

    return 0;
}
