package com.bptn.course.Week4.junit.Streams;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CollectToMap {
	public static void main(String[] args) {
		List<String> fruits = Arrays.asList("Apple", "Banana", "Orange");

		// Creating a Map of fruit name as key and length as value
		Map<String, Integer> fruitLengthMap = fruits.stream().collect(Collectors.toMap(fruit -> fruit, String::length));

		System.out.println("Fruit length map: " + fruitLengthMap);
	}
}

