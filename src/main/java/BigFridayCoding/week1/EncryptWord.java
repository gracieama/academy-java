package Friday_28_09_BigCoding;

import java.util.Arrays;
import java.util.Scanner;

public class EncryptWord {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		// receive input
		String input = scanner.nextLine();
		String encrypted = "";

		// our list of alphabet letters, serving as our encryption key
		var lowerCaseLetters = Arrays.asList("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
				"p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z");
		var upperCaseLetters = Arrays.asList("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O",
				"P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");

		// for each character in our input string
		for (int i = 0; i < input.length(); i++) {
			char current = input.charAt(i);
			int currentLowerCaseIndex = lowerCaseLetters.indexOf(String.valueOf(current));
			int currentUpperCaseIndex = upperCaseLetters.indexOf(String.valueOf(current));
			if (currentLowerCaseIndex < 0 && currentUpperCaseIndex < 0) {
				// handle non-alphabetic characters
				encrypted += current;
			} else if (currentLowerCaseIndex >= 0) {
				// handle alphabetic characters
				int incrementedIndex = (currentLowerCaseIndex + 1) % lowerCaseLetters.size();
				encrypted += lowerCaseLetters.get(incrementedIndex);
			} else if (currentUpperCaseIndex >= 0) {
				// handle alphabetic characters
				int incrementedIndex = (currentUpperCaseIndex + 1) % upperCaseLetters.size();
				encrypted += upperCaseLetters.get(incrementedIndex);
			}
		}

		System.out.println("Encrypted word: " + encrypted);


	}

}
