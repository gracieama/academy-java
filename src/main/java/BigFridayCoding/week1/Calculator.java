package BigFridayCoding.week1;

import java.util.Scanner;

public class Calculator {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		int task;
		double num1 = 0;
		double num2 = 0;
		boolean goAgain = true;

		do {
			System.out.println("/...Calculator Menu.../");
			System.out.println("Press 1 for addition");
			System.out.println("Press 2 for subtraction");
			System.out.println("Press 3 for multiplication");
			System.out.println("Press 4 for division");
			System.out.println("Press 5 to square a number");
			System.out.println("Press 6 to find a square root");
			System.out.println("Press 7 to find the reciprocal");

			task = scanner.nextInt();

			if (task > 0 && task < 8) { // if valid input
				if (task < 5) {
					System.out.print("Enter your first number: ");
					num1 = scanner.nextDouble();

					System.out.print("Enter your second number: ");
					num2 = scanner.nextDouble();
				}
				else if (task == 5) {
					System.out.print("Enter the number to find Square: ");
					num1 = scanner.nextDouble();
				}
				else if (task == 6) {
					System.out.print("Enter the number to find Square Root: ");
					num1 = scanner.nextDouble();
				} else if (task == 7) {
					System.out.print("Enter the number to find Reciprocal: ");
					num1 = scanner.nextDouble();
				}

				switch (task) {
				case 1:
					System.out.println("The sum of your number, " + num1 + " and " + num2 + " is = " + (num1 + num2));
					break;
				case 2:
					System.out.println(
							"The subtraction of your number, " + num1 + " and " + num2 + " is = " + (num1 - num2));
					break;
				case 3:
					System.out.println(
							"The product of the numbers " + num1 + " and " + num2 + " is = " + (num1 * num2));
					break;
				case 4:
					System.out
							.println("Dividing " + num1 + " by " + num2 + " the quotient is " + (num1 / num2));
					System.out.println("The remainder is " + (num1 % num2));
					break;
				case 5:
					System.out.println("The Square of the number " + num1 + " is = " + (num1 * num1));
					break;
				case 6:
					System.out.println("The Square Root of the number " + num1 + " is = " + Math.sqrt(num1));
					break;
				case 7:
					System.out.println("The Reciprocal of the number " + num1 + " is = " + (1 / num1));
					break;
				}
			} else {
				System.out.println("Invalid choice! Please make a valid choice."); // If input is not valid
			}

			System.out.println("To continue calculation Press 1, else press any other number to exit");
			int nextSteps = scanner.nextInt();
			if (nextSteps == 1) {
				goAgain = true;
			} else {
				goAgain = false;
				break;
			}
		} while (goAgain);

		// breaks to here
		scanner.close();

	}
}
