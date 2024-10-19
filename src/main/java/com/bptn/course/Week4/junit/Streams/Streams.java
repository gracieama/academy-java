package com.bptn.course.Week4.junit.Streams;

//		//When getting a stream from an existing array, you use dot notation:
//		Stream.of(nameOfArray);
//		
//		//When working with a Collection, you set a new variable to be the result of your Stream. Remember: Streams don't change the underlying data, they create a new data set according to the methods you call:
//		myCollection.stream();

//		myCollection
//		.stream()
//		.filter()
//		.sorted()
//		// ...
//		// Remember that the final operation should be a terminal operator, such as .toArray()
//		.toArray();

//		//A Predicate should look something like this:
//		Predicate<Employee> isRetirementAge = e -> e.getAge() > 64;
//		
//		//Given a list called employees, we could then filter it to receive a list of employees who are of retirement age:
//		List<Employee> retirementAgeEmps = employees.stream().filter(isRetirementAge).toList();
//		
//		//Alternatively, we can write a lambda expression as the predicate directly in place of the isRetirementAge variable:
//		List<Employee> retirementAgeEmps = employees.stream().filter(e -> e.getAge() > 64).toList();

