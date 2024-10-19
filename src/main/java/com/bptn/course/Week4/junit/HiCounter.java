package com.bptn.course.Week4.junit;

public class HiCounter {
	public static void main(String[] args) {
		int i = 0;
		int count = 0; // Initialize a counter variable

		while (i <= 4) {
			for (int j = 0; j < 3; j++) {
				System.out.println("Hi!");
				count++; // Increment the counter for each "Hi!"
			}
			i++;
		}

		// Print the total count of "Hi!"
		System.out.println("Total count of 'Hi!': " + count);

	}
}