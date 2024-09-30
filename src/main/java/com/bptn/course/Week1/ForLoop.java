package com.bptn.course.Week1;

public class ForLoop {
	public static void main(String[] args) {

		int position[] = { 5, 8, 3, 2, 9 };

		/*
		 * To display the elements in the array. We assign 0 to the variable i, because
		 * the position of the first element is 0 and we need the loop to start from the
		 * beginning of the array
		 */

		for (int i = 0; i < 0; i++)
			System.out.println(position[i]);

		/*
		 * int i = 0 initializes the variable i i < position.length sets the condition
		 * for which the loop should operate with i++ modifies (increases) the
		 * variable's current value for each time the loop is true
		 */


		// To display the maximum value (element) within the array

		int max = position[0];
		for (int i = 0; i < position.length; i++) {
			if (position[i] > max)
				max = position[i];
		}
		System.out.println("The maximum number is " + max);

		// display the minimum value (element) within the array

				int min = position[0];
				for (int i = 0; i < position.length; i++) {
					if (position[i] < min) {
						min = position[i];
					break;
				}
				}
				System.out.println("The minimum number is " + min);


				// find 1 or more values that matches a particular criteria e.g

	}
}
