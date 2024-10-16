package com.bptn.course.Week1;

public class Fibonacci {
	public static void main(String[] args) {

		// Predefined numbers to start off the Fibonacci series:
		int num1 = 0;
		int num2 = 1;
		int num3 = 0;

		// Print the first two numbers of the Fibonacci series:
		System.out.println(num1);
		System.out.println(num2);

		// Print the next 8 numbers of the Fibonacci series:
		while (num3 < 34) {
			num3 = num1 + num2;
			System.out.println(num3);
			num1 = num2;
			num2 = num3;
		}
	}
}
