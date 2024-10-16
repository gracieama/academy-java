package Week3.ArrayListDemo;

import java.util.ArrayList;

public class Test2 {
	public static void main(String[] args) {
		ArrayList<String> names = new ArrayList<>();
		String[] friends = { "Sam", "Jessica", "Mark", "Alexis" };
		for (int i = 0; i <= friends.length - 1; i++) {
			names.add(friends[i]);
		}
		System.out.println(names);
	}
}
