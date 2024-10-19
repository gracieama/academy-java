package com.bptn.course.Week4.junit.FileHandling;


import java.io.FileWriter;
import java.io.IOException;

class Student {
	int studentID;
	String studentName;

	public Student(int studentID, String studentName) {
		this.studentID = studentID;
		this.studentName = studentName;
	}

	public int getStudentID() {
		return studentID;
	}

	public String getStudentName() {
		return studentName;
	}

}

public class CreateFile {

	public static void main(String[] args) {
		try {
			FileWriter writer = new FileWriter("student.txt");
			writer.write("This is a new file!");
			System.out.println("File created!");
			writer.close();
		} catch (IOException e) {
			System.out.println("Something went wrong while creating the file: ");
			e.printStackTrace();
		}

	}

}

//Student myStudent1 = new Student(123, "TestStudent 1");
//Student myStudent2 = new Student(456, "TestStudent 2");
//Student myStudent3 = new Student(789, "TestStudent 3");
//Student myStudent4 = new Student(100, "TestStudent 4");

//writer.write(myStudent.getStudentID());
//writer.write(myStudent1.getStudentName() + "\n");
//writer.write(myStudent2.getStudentName() + "\n");
//writer.write(myStudent3.getStudentName() + "\n");
//writer.write(myStudent4.getStudentName() + "\n");
