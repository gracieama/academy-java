package Week5.MondayChallenge;

import java.util.ArrayList;
import java.util.List;

public class ListToStream {
	
	// Create your instance variables
	int id;
	String name;
	double price;

    // Create a constructor to initialize the product properties
	public ListToStream(int id, String name, double price) {
		this.id = id;
		this.name = name;
		this.price = price;
	}

	// Create a static method "countProducts"
	public static long countProducts(List<ListToStream> productsList) {
		long count = productsList.stream()
    // Filter products based on the price and get the count of products
				.filter(product -> (product.price < 30000)).count();
		return count;
	}

    public static void main(String[] args) {
        // Create a list of products
        List<ListToStream> productsList = new ArrayList<ListToStream>();

        // Add products to the list
		productsList.add(new ListToStream(1, "HP Laptop", 25000));
		productsList.add(new ListToStream(2, "Dell Laptop", 30000));
		productsList.add(new ListToStream(3, "Lenevo Laptop", 28000));
		productsList.add(new ListToStream(4, "Sony Laptop", 28000));
		productsList.add(new ListToStream(5, "Apple Laptop", 90000));

        // Call "countProducts" method and hold return type in "count" variable 
		long count = countProducts(productsList);
        
        // Print the count of products whose price is less than 30000
        System.out.println("Number of products with price less than 30000: " + count);
    }

}
