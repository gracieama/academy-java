package com.bptn.course.Week4.junit.Streams;

import java.util.List;

public class Map2 {
	public static void main(String[] args) {

		List<Integer> numbers = List.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

		// Without using streams
		int sum = 0;
		for (int number : numbers) {
			if (number % 2 == 0) {
				sum += number;
			}
		}
		System.out.println("Sum of even numbers: " + sum);


		List<Integer> numberss = List.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

		// Using streams
		int sums = numbers.stream().filter(number -> number % 2 == 0).mapToInt(Integer::intValue).sum();
		System.out.println("Sum of even numbers: " + sum);
	}
}
