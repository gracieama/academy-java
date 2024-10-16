package Week3.Maps;

import java.util.TreeMap;

public class TreeMapDemo {

	public static void main(String[] args) {

		// Creating a TreeMap and populating it with initial key-value pairs
		TreeMap<String, Integer> map = new TreeMap<>();
		map.put("John", 25);
		map.put("Jane", 30);
		map.put("Jack", 35);

		// Iterating a TreeMap using the keySet() method.
		for (String key : map.keySet()) {
			System.out.println(key + ": " + map.get(key));
		}

		// Using the get() method to access a value
		System.out.println("John's age: " + map.get("John"));

		// Using the put() method to update the value for a given key
		map.put("John", 30);
		System.out.println("John's new age: " + map.get("John"));

		// Using the remove() method to remove a key-value pair
		map.remove("Jane");
		System.out.println("Jane's age: " + map.get("Jane"));

		// Using the headMap() method to get a submap of the TreeMap
		System.out.println("HeadMap of the TreeMap: " + map.headMap("John"));

		// Using the tailMap() method to get a submap of the TreeMap
		System.out.println("TailMap of the TreeMap: " + map.tailMap("John"));

		// Using the subMap() method to get a submap of the TreeMap
		System.out.println("Submap of the TreeMap: " + map.subMap("Jack", "John"));

		// Using the firstKey() method to get the first key in the TreeMap
		System.out.println("First key in the TreeMap: " + map.firstKey());

		// Using the lastKey() method to get the last key in the TreeMap
		System.out.println("Last key in the TreeMap: " + map.lastKey());
	}
}
