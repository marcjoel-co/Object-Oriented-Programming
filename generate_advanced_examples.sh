#!/bin/bash

# Directories for each language
mkdir -p C
mkdir -p Java
mkdir -p Cpp

# C examples
cat << 'EOF' > C/pointers_arrays.c
#include <stdio.h>

// Function to manipulate an array using pointers
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
EOF

cat << 'EOF' > C/pointers_strings.c
#include <stdio.h>
#include <ctype.h>

// Function to manipulate a string using pointers
void manipulate_string(char* str) {
    while (*str) {
        *str = toupper(*str);
        str++;
    }
}

int main() {
    char str[] = "hello world";
    manipulate_string(str);

    printf("String after manipulation: %s\n", str);
    return 0;
}
EOF

cat << 'EOF' > C/hashmap_structs.c
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
EOF

# Java examples
cat << 'EOF' > Java/PointersArrays.java
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
EOF

cat << 'EOF' > Java/PointersStrings.java
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
EOF

cat << 'EOF' > Java/HashMapExample.java
import java.util.HashMap;

class HashMapExample {
    private HashMap<String, Integer> hashmap;

    public HashMapExample() {
        hashmap = new HashMap<>();
    }

    public void addEntry(String key, int value) {
        hashmap.put(key, value);
    }

    public Integer findEntry(String key) {
        return hashmap.get(key);
    }

    public void printHashMap() {
        for (String key : hashmap.keySet()) {
            System.out.println("Key: " + key + ", Value: " + hashmap.get(key));
        }
    }

    public static void main(String[] args) {
        HashMapExample hashMapExample = new HashMapExample();
        hashMapExample.addEntry("apple", 1);
        hashMapExample.addEntry("banana", 2);
        hashMapExample.addEntry("cherry", 3);

        hashMapExample.printHashMap();

        Integer value = hashMapExample.findEntry("banana");
        if (value != null) {
            System.out.println("Found entry: Key: banana, Value: " + value);
        } else {
            System.out.println("Entry not found.");
        }
    }
}
EOF

# C++ examples
cat << 'EOF' > Cpp/pointers_arrays.cpp
#include <iostream>

// Function to manipulate an array using pointers
void manipulate_array(int* arr, int size) {
    for (int i = 0; i < size; i++) {
        arr[i] *= 2;
    }
}

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);
    manipulate_array(arr, size);

    std::cout << "Array after manipulation: ";
    for (int i = 0; i < size; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
EOF

cat << 'EOF' > Cpp/pointers_strings.cpp
#include <iostream>
#include <algorithm>
#include <cctype>

// Function to manipulate a string using pointers
void manipulate_string(std::string& str) {
    std::transform(str.begin(), str.end(), str.begin(), ::toupper);
}

int main() {
    std::string str = "hello world";
    manipulate_string(str);

    std::cout << "String after manipulation: " << str << std::endl;
    return 0;
}
EOF

cat << 'EOF' > Cpp/hashmap_structs.cpp
#include <iostream>
#include <unordered_map>
#include <string>

// HashMap class using unordered_map
class HashMapExample {
private:
    std::unordered_map<std::string, int> hashmap;

public:
    void addEntry(const std::string& key, int value) {
        hashmap[key] = value;
    }

    int findEntry(const std::string& key) {
        auto it = hashmap.find(key);
        if (it != hashmap.end()) {
            return it->second;
        }
        return -1; // Indicate not found
    }

    void printHashMap() {
        for (const auto& pair : hashmap) {
            std::cout << "Key: " << pair.first << ", Value: " << pair.second << std::endl;
        }
    }
};

int main() {
    HashMapExample hashMapExample;
    hashMapExample.addEntry("apple", 1);
    hashMapExample.addEntry("banana", 2);
    hashMapExample.addEntry("cherry", 3);

    hashMapExample.printHashMap();

    int value = hashMapExample.findEntry("banana");
    if (value != -1) {
        std::cout << "Found entry: Key: banana, Value: " << value << std::endl;
    } else {
        std::cout << "Entry not found." << std::endl;
    }

    return 0;
}
EOF

echo "Files generated successfully!"