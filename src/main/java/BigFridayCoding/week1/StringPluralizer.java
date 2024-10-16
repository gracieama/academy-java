package BigFridayCoding.week1;

import java.util.Scanner;

public class StringPluralizer {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		int amt = 0;
		String stringWord = "";

		System.out.print("# in: ");
		amt = scanner.nextInt();
		scanner.nextLine();

		System.out.print("word: ");
		stringWord = scanner.nextLine();

		if (amt == 0 || amt > 1) {

			if (stringWord.endsWith("fe")) {
				stringWord = stringWord.replaceAll("(?i)fe$", "ves");

			} else if (stringWord.endsWith("sh") || stringWord.endsWith("ch")) {
				stringWord = stringWord + ("es");

			} else if (stringWord.endsWith("us")) {
				stringWord = stringWord.replaceAll("(?i)us$", "i");

			} else if (stringWord.endsWith("ay") || stringWord.endsWith("oy") || stringWord.endsWith("ey")
					|| stringWord.endsWith("uy")) {
				stringWord = stringWord + ("s");

			} else if (stringWord.endsWith("y")) {
				stringWord = stringWord.replaceAll("(?i)y$", "ies");

			} else {
				stringWord = stringWord + ("s");
			}

		}
		System.out.println(amt + " " + stringWord);
		scanner.close();


	}

}
