package Friday_28_09_BigCoding;

import java.util.Scanner;

public class Calculation {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		int option = 0;
		boolean calcAgain = true;
		String word1 = "";
		String word2 = "";

		do {
			word2 = "";
			word1 = "";
			System.out.println("/…String Menu…/");
			System.out.println("Press 1 for Palindrome Check");
			System.out.println("Press 2 to reverse a String");
			System.out.println("Press 3 to Concatenate two Strings");
			System.out.println("Press 4 for String Comparison");
			System.out.println("Press 5 to Calculate the Length of String");
			System.out.println("Enter the option: ");

			option = scanner.nextInt();
			scanner.nextLine();

			if (option > 0 && option < 6) { // if option is valid

				switch (option) {
				case 1:
					System.out.println("Palindrome Check");
					System.out.println("Enter a string:");
					word1 = scanner.nextLine();
					for (int i = word1.length() - 1; i >= 0; i--) {
						word2 += word1.charAt(i);
					}
					if (word1.toLowerCase().equals(word2.toLowerCase())) {
						System.out.println(word1 + " is a palindrome");
					} else {
						System.out.println(word1 + " is not a palindrome");
					}
					break;
				case 2:
					System.out.println("Reverse a string");
					word1 = scanner.nextLine();
					for (int i = word1.length() - 1; i >= 0; i--) {
						word2 += word1.charAt(i);
					}
					System.out.println("The reverse of " + word1 + " is " + word2);
					break;
				case 3:
					System.out.println("Enter First string:");
					word1 = scanner.nextLine();
					System.out.println("Enter Second string:");
					word2 = scanner.nextLine();
					System.out.println(word1 + word2);
					break;
				case 4:
					System.out.println("String Comparison");
					System.out.println("Enter First string");
					word1 = scanner.nextLine();
					System.out.println("Enter Second string");
					word2 = scanner.nextLine();
					if (word1.equals(word2)) {
						System.out.println("The entered strings are equal.");
					} else {
						System.out.println("The entered strings are not equal.");
					}
					break;
				case 5:
					System.out.println("Length of a string");
					System.out.println("Enter a string:");
					word1 = scanner.nextLine();
					System.out.println("The length of the entered string is:" + word1.length());
					break;
				// if option is invalid
				}

			} else {
				System.out.println("Invalid choice! Please make a valid choice.");
			}

		} while (calcAgain);
	}
}
