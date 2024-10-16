package Week1.Oop.Bank;

class SavingsAccount extends BankAccount {

	private double interestRate;

	public SavingsAccount(String accountNumber, double initialBalance, double interestRate) {
		super(accountNumber, initialBalance); // refers to the constructor of the current class
		this.interestRate = interestRate; // initializes the new value
	}

	public void applyInterest() {
		double interest = getBalance() * interestRate / 100;
		deposit(interest);
	}

}
