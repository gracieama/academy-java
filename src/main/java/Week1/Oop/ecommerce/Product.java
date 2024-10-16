package Week1.Oop.ecommerce;

public class Product {
	private String productId;
	private String productName;
	private double productPrice;
	private int productQuantity;

	public Product(String productId, String productName, double productPrice, int productQuantity) {
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productQuantity = productQuantity;
	}

	// Getters and Accessors
	public String getProductId() {
		return this.productId;
	}

	public String getProductName() {
		return this.productName;
	}

	public double getProductPrice() {
		return this.productPrice;
	}

	public int getProductQuantity() {
		return this.productQuantity;
	}

	// reduce product stock based on quantity
	public void reduceStock(int quantity) {
		if (quantity <= this.productQuantity) {
			this.productQuantity -= quantity;
		} else {
			throw new IllegalArgumentException("Insufficient Stock!");
		}
	}
}
