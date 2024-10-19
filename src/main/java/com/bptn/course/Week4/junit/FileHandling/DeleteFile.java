package com.bptn.course.Week4.junit.FileHandling;

import java.io.File;

public class DeleteFile {

	public static void main(String[] args) {

		File file = new File("sample.txt");

		if (file.exists()) {
			System.out.println("File found! Deleting now..");
			if (file.delete()) {
				System.out.println("File deleted!");
			}
		} else {
			System.out.println("File not found!");
		}

	}

}
