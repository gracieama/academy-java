package BigFridayCoding.week3.customExceptionHashMap;

import java.util.HashMap;
import java.util.Map;

public class Store {

	// create the map instance variable
	Map<String, Integer> products = new HashMap<>();

	public Store() {
		// Initialize the products map with default values
		products.put("apple", 10);
		products.put("banana", 5);
		products.put("orange", 0);
	}

	public void purchase(String product, int quantity) throws OutOfStockException {
		// Check if the product is available in the store. Hint: Use the map
		if (!products.containsKey(product)) {
			// If not, throw an OutOfStockException with a message indicating the product is
			// not available.
			throw new OutOfStockException("Product " + product + " not available in store");
		}
		// Check if there is enough stock for the desired quantity. Hint: Use the map
		if (quantity > products.get(product)) {
			// If not, throw an OutOfStockException with a message indicating the product is
			// out of stock.
			throw new OutOfStockException("Product " + product + " out of stock");

		}
	}
}

