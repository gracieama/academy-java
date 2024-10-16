package Week1.Oop.Wednesday.Example1;

public class EnhancedItem extends Item {

	private int y;

	public void setY(int theY) {
		y = theY;
	}

	// ... other methods not shown

	public static void main(String[] args) {
		EnhancedItem currItem = new EnhancedItem();
		currItem.y = 2;
	}
}
