package com.bptn.course.Week4.junit.Streams;

import java.util.Arrays;
import java.util.List;

public class ForEach {
	public static void main(String[] args) {
		List<String> fruits = Arrays.asList("Apple", "Banana", "Orange");

		// Printing each fruit using the forEach method
		fruits.stream().forEach(System.out::println);
	}

	// Traditional way of Printing. Uncomment to run the code below
	// for (String fruit: fruits){
	// System.out.println(fruit);
	// }

}


//	It can be used with a lambda expression or a method reference to perform a single quick action:
//		collectionName.forEach(s -> System.out.print(s + ","));
//		collectionName.forEach(System.out::println);
//
//		collectionName.forEach(s -> {
//	 In here, you can perform any number of actions, including loops, conditionals, and nearly any other code you want to write.   
//			})
