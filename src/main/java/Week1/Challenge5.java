package Week1;

import java.util.Scanner;

public class Challenge5 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

		System.out.println("Welcome to the Vending Machine");
		System.out.println("Available Products: ");
		System.out.println("1. Milk - $2.99");
		System.out.println("2. Egg - $3.59");
		System.out.println("3. Coffee - $1.09");


		int order = scanner.nextInt();

		System.out.println("What would you like to order?");

		double payment = scanner.nextDouble();

		/*
		 * switch (payment) { case 1: System.out.println("You ordered Pizza!"); break;
		 * case 2: System.out.println("You ordered Burger!"); break;
		 * 
		 * default: System.out.println("The amount you entered is not sufficient"); }
		 */
		scanner.close();
	}

}
