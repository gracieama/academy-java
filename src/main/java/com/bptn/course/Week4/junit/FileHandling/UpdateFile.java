package com.bptn.course.Week4.junit.FileHandling;

import java.io.FileWriter;
import java.io.IOException;

public class UpdateFile {

	public static void main(String[] args) {

		try {
			FileWriter writer = new FileWriter("sample.txt", true);
			writer.write("This is a newer file!");
//			writer.write("This is a new line to the existing file!");
			System.out.println("File created!");
			writer.close();
		} catch (IOException e) {
			System.out.println("Something went wrong while creating the file: ");
			e.printStackTrace();
		}
	}

}
