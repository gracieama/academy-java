package com.bptn.course.Week4.junit.StudentSearch;

public class Student {
	// Define instance variables name and rollNumber
	private int rollNumber;
	private String name;

	// Create parameterized constructor
	public Student(int rollNumber, String name) {
		this.rollNumber = rollNumber;
		this.name = name;
	}

	// Create getter method for roll number variable which returns rollNumber
	public int getRollNumber() {
		return rollNumber;
	}

	// Create getter method for name variable which returns name
	public String getName() {
		return name;
	}
}
