package com.bptn.course.Week4.junit.Sort;

import java.util.Arrays;

public class InsertionSort2 {
	public static void insertionSort(int[] elements) {
		for (int j = 1; j < elements.length; j++) {
			int temp = elements[j];
			int possibleIndex = j;
			while (possibleIndex > 0 && temp < elements[possibleIndex - 1]) {
				elements[possibleIndex] = elements[possibleIndex - 1];
				possibleIndex--;
			}
			elements[possibleIndex] = temp;
		}
	}

	public static void main(String[] args) {
		int[] arr1 = { 3, 86, -20, 14, 40 };
		System.out.println(Arrays.toString(arr1));
		insertionSort(arr1);
		System.out.println(Arrays.toString(arr1));
	}
}

