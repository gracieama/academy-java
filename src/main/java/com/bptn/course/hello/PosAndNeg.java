package com.bptn.course.hello;

import java.util.Scanner;

public class PosAndNeg {
		
	    public static void main(String[] args) {
	         Scanner scanner = new Scanner(System.in);

	         System.out.println("Input a number");
	        double num = scanner.nextDouble();

	    if (num > 0) {
	        System.out.println("The number is positive.");
	    }
	    else if (num < 0) {
	        System.out.println("The number is negative.");
	    }
	        else {
	       System.out.println("The number is equal to zero");
	    }
	        
	    scanner.close();

	    }
	    }




