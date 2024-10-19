package com.bptn.course.Week4.junit.Streams;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class EvenNumberExample {
    public static void main(String[] args) {
        // Create a list of integers
        List<Integer> list = new ArrayList<>(Arrays.asList(1,2,3,4,5,6,7,8,9,10));
        
        // Use the stream method to convert the list to a stream of integers, then use the filter method to keep only the even numbers in the stream, and finally use the toList() method to convert the filtered stream back into a list of integers
        List<Integer> evenList = list.stream()
                                        .filter(number -> number % 2 == 0)
                                        .toList()
        ;
        
        // Print the original list and the new list containing only the even numbers. Do not modify the code below
        System.out.println("Original list: " + list);
        System.out.println("Even numbers list: " + evenList);
    }
}

