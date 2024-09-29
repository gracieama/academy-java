package Friday_28_09_BigCoding;

import java.util.Scanner;

public class GuessNumber {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		int targetNumber = 23;
		int guess = 0;
		boolean guessAgain = true;

		do {
			System.out.println("targetNumber: " + targetNumber);

			System.out.print("guess: ");
			guess = scanner.nextInt();

			if (guess <= 0 || guess > 100) {
				System.out.println("Please enter a number between 1 and 100.");
			} else {
			// guess is definitely valid at this point

			// condition to check input from user and compare with targetNumber. 23
			if (guess < 23) {
				System.out.println("Too low! Try again.");
			} else if (guess > 23) {
				System.out.println("Too high! Try again.");
			} else {
				// if guess is targetNumber, 23
				System.out.println("Congratulations! You guessed the number correctly!");
				// ends the loop once targeNumber is valid
			}
			guess = 0;
		}
		} while (guessAgain); // while guess is != targetNumber

	}

}
