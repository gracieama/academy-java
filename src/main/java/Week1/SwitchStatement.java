package Week1;

import java.util.Scanner;

public class SwitchStatement {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

		System.out.println("Welcome to the menu!");
		System.out.println("Please choose an item from the list: ");
		System.out.println("1. Pizza - $12.99");
		System.out.println("2. Burger - $8.99");
		System.out.println("3. Pasta - $9.99");
		System.out.println("4. Salad - $6.99");
		System.out.println("5. Exit");

		int choice = scanner.nextInt();

		switch (choice) {
		case 1:
			System.out.println("You ordered Pizza!");
			break;
		case 2:
			System.out.println("You ordered Burger!");
			break;
		case 3:
			System.out.println("You ordered Pasta!");
			break;
		case 4:
			System.out.println("You ordered Salad!");
			break;
		case 5:
			System.out.println("Thank you for stopping by!");
			break;
		default:
			System.out.println("Invalid Choice!");
		}

		// 1. Allow multiple selections
		// 2. Calculate total price for the order
		// 3. While exiting, show the total price

	}

}
