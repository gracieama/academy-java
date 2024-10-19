package com.bptn.course.Week4.junit.Streams;

import java.util.Arrays;
import java.util.List;

public class Map {

	public static void main(String[] args) {
		List<String> listOfStrings = Arrays.asList("1", "2", "3", "4", "5");

		List<Integer> listOfIntegers = listOfStrings.stream().map(Integer::valueOf).toList();

		System.out.println(listOfIntegers);
	}

}
