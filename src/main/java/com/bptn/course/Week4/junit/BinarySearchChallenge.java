package com.bptn.course.Week4.junit;

import java.util.Arrays;

public class BinarySearchChallenge {

	public void Start() {

		int[] array = { 3, 6, 1, 4, 2, 9, 7, 8, 5, 0 };
		int key = 1;

		Arrays.sort(array);

		// sort array
		int result = binarySearch(array, key);

		// Print values in array after sort
		System.out.println(result);

	}

	int binarySearch(int arr[], int key) {
		// put your code here.
		int left = 0;
		int right = arr.length - 1;

		while (left <= right) {
			int mid = (left + right) / 2;

			if (arr[mid] == key) {
				return arr[mid];
			} else if (arr[mid] < key) {
				left = mid + 1;
			} else if (arr[mid] > key) {
				right = mid - 1;
			}
		}
		return -1;
	}

	public static void main(String[] args) {
		BinarySearchChallenge main = new BinarySearchChallenge();
		main.Start();
	}
}
