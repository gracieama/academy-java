package com.bptn.course.Week1;

import java.util.Scanner;

public class Factorial {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("Please enter a whole number: ");
		int number = scanner.nextInt();

		if (number < 0) {
			System.out.println("Factorial is not defined for negative numbers.");
		} else {
			long factorial = 1;
			for (int i = 1; i <= number; i++) {
				factorial *= i;
			}
			System.out.println("The factorial of " + number + " is: " + factorial);
		}

		scanner.close();


	}
}