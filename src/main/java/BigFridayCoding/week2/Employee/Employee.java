package com.bptn.course.Friday_04_10_BigCodingEmployee;

class Employee {
	// Instance variable to store salary
	private int salary;

	// Instance variable to store hours per day worked by employee
	private int hoursPerDay;

	// Constructor to set instance variables(salary and hoursPerDay) value
	public Employee(int salary, int hoursPerDay) {
		this.setSalary(salary);
		this.sethoursPerDay(hoursPerDay);
	}

	// Set method to update salary
	public void setSalary(int salary) {
		this.salary = salary;
		if (salary < 500) {
			this.salary += 10;
		}
	}

	// Set method to update hoursPerDay
	public void sethoursPerDay(int hoursPerDay) {
		this.hoursPerDay = hoursPerDay;
		if (hoursPerDay > 6) {
			this.salary += 5;
		}
	}

	// Get method to return salary
	public int getSalary() {
		return this.salary;
	}

}