package Week3.ArrayListDemo;

import java.util.ArrayList;
import java.util.List;

public class Test7 {

	// convert array to arraylist

	// Complete the functionality of the method below
	public static List<String> convertArrayToList(String[] inputArray) {

		// Create a new ArrayList of String.
		ArrayList<String> inputArrayList = new ArrayList<>();

		// Iterate inputArray using a for-each loop and add the elements to the new
		for (String element : inputArray)

		// ArrayList. Hint: Use add() method to add elements to ArrayList.
		{
			inputArrayList.add(element);
		}

		// return the new list with elements.
		return inputArrayList;
	}

	// Do not modify the code below
	public static void main(String[] args) {

		String[] cars = { "Volvo", "Honda", "Ford" };

		List<String> arraylist = convertArrayToList(cars);

		System.out.println(arraylist);
	}
}

