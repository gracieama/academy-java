package com.bptn.course.Week4.junit.Sort;

public class SortSummary {
	public static void main(String[] args) {
		int[] arr = { 5, 1, 4, 2, 3 };
		insertionSort(arr);
		System.out.println(arr);
	}

	static void insertionSort(int[] arr) {
		int n = arr.length;
		for (int i = 1; i < n; i++) {
			int key = arr[i];
			int j = i - 1;
			System.out.println("i: " + i + ", j: " + j + ", key: " + key + ", arr[j]: " + arr[j]);
			
			while (j >= 0 && arr[j] > key)
			{
				System.out.println("\twhile j >= 0 && arr[j] > key");
				System.out.println("\t\tarr[j]: " + arr[j] + ", arr[j + 1]: " + arr[j + 1]);
				arr[j + 1] = arr[j];
				j = j - 1;
				System.out.println("\t\tj: " + j);
			}
			arr[j + 1] = key;
		}
	}
}
