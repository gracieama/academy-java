package com.bptn.course.Friday_04_10_BigCodingEmployee;

public class Main {
	public static void main(String[] args) {
		// create an instance of Employee class and initialize it with salary = 100 and
		// hoursPerDay = 8
		Employee student = new Employee(100, 8);

		// print the salary of the employee
		System.out.println(student.getSalary());
	}
}