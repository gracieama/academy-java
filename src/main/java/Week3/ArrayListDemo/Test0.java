package Week3.ArrayListDemo;

import java.util.ArrayList;

public class Test0 {

	public static void main(String[] args) {

		ArrayList<String> list1 = new ArrayList<String>();
		list1.add("a");
		list1.add("b");
		list1.add(0, "c");
		list1.add(1, "d");
		list1.set(2, "e");
		list1.add("f");
		System.out.println(list1);

	}
}