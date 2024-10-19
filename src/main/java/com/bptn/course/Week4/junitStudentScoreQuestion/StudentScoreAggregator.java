package com.bptn.course.Week4.junitStudentScoreQuestion;

import java.util.HashMap;
import java.util.Map;

public class StudentScoreAggregator {

	public static double calculateAverage(Student student, Map<String, Double> scores) {

		double sum = 0.0;

		for (Double score : scores.values()) {
			sum += score;
		}

		double average = sum / scores.size();

		return average;
	}

	public static void main(String[] args) {
		Map<String, Double> scores = new HashMap<>();
		scores.put("course1", 90.0);
		scores.put("course2", 75.5);
		scores.put("course3", 98.3);

		Student s1 = new Student("Student One", scores);

		System.out.printf("The average score is: %.2f", calculateAverage(s1, scores));

	}

}
