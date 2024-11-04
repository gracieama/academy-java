package Week5.MondayChallenge.AListToMap;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ListToMap {
	// create static method "convertStudentListToMap"
	public static Map<Integer, Student> convertStudentListToMap(List<Student> students) {
	    Map<Integer, Student> studentMap = students.stream()
	                .collect(Collectors.toMap(
						Student::getId, student -> student));
	        return studentMap;
	    }

	// Complete the main method
	public static void main(String[] args) {

		// Create a list of students
		List<Student> students = new ArrayList<>();

		// add student objects to this list
		students.add(new Student(1, "Alice", 20));
		students.add(new Student(2, "Bob", 22));
		students.add(new Student(3, "Charlie", 21));

		// Call "convertStudentListToMap" method and hold the returned value in
		// "studentMap" variable.
		Map<Integer, Student> studentMap = convertStudentListToMap(students);

		// Print the map
		// System.out.println("Students Map: " +
		// studentMap);System.out.println("Students Map:");
		studentMap.forEach((id, student) -> System.out.println("ID: " + id + ", Student: " + student));
	}
}

