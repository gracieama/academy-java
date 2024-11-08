package Week3.ArrayListDemo;

import java.util.ArrayList;

public class Test3 {

	public static ArrayList<Integer> reverse(ArrayList<Integer> list) {
		ArrayList<Integer> reversed = new ArrayList<Integer>();
		for (Integer element : list) {
			reversed.add(0, element);
		}
		return reversed;
	}

	public static void main(String[] args) {
		// instantiate ArrayList and fill with Integers
		ArrayList<Integer> values = new ArrayList<Integer>();
		int[] nums = { 1, 5, 7, 9, -2, 3, 2 };
		for (int i = 0; i < nums.length; i++) {
			values.add(nums[i]);
		}
		ArrayList<Integer> result = reverse(values);
		System.out.println("Expected Result:\t [2, 3, -2, 9, 7, 5, 1]");
		System.out.println("Your Result:\t\t " + result);
	}
}
