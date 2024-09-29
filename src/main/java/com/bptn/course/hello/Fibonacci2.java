package com.bptn.course.hello;

public class Fibonacci2 {

	public static void main(String[] args) {
		int num1 = 0;
		int num2 = 1;
		int num3;
		int count;

		System.out.println(num1);
		System.out.println(num2);

		for (count = 0; count <= (20 - 3); count++) {
			num3 = num1 + num2;
			System.out.println(num3);
			num1 = num2;
			num2 = num3;
		}

	}

}
