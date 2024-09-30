package Oop;

// public is the abstraction
// class is the encapsulation
public class BankAccount {

	// encapsulation
	// Data members/properties of the class/Attributes
	private String accountNumber;
	private double balance;

	// Constructors using the formal names and has the same name as class name
	public BankAccount(String accountNumber, double initialBalance) {
		this.accountNumber = accountNumber;
		this.balance = initialBalance;
	}

	// polymorphism: functions/methods/behavior of the class
	public void deposit(double amount) {
		if (amount > 0) {
			balance += amount;
		}
	}

	public void withdraw(double amount) {
		if (amount > 0 && amount <= balance) {
			balance -= amount;
		}
	}

	// Getters and Setters
	public double getBalance() {
		return balance;
	}

	public void displayAccountInfo() {
		System.out.println("Account Number: " + accountNumber);
		System.out.println("Current Balance: " + balance);
	}

}

//Inheritance: All other classes can inherit from this one by adding extend to
// the class line