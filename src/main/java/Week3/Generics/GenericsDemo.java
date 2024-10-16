package Week3.Generics;

public class GenericsDemo {
	// using a for each loop
	public static <T> void printArray(T[] array) {
		for (T element : array) {
			System.out.println(element);
		}
	}

	public static void main(String[] args) {
		Integer[] intArray = { 1, 2, 3 };
		String[] stringArray = { "Hello", "Hi", "Bye" };

		printArray(intArray);
		printArray(stringArray);
	}

}