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
