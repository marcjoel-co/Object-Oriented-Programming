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
