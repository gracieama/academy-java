package Oop;

class BankSystems {

	public static void main(String[] args) {
		BankAccount testAccount = new BankAccount("987654", (1200.00));
		testAccount.displayAccountInfo();

		BankAccount newtestAccount = new BankAccount("123456", (600.00));
		newtestAccount.displayAccountInfo();

		SavingsAccount mySavingsAccount = new SavingsAccount("SAVINGS123", 500.00, 1.00);
		mySavingsAccount.applyInterest();
		mySavingsAccount.displayAccountInfo();
	

		ChequingAccount myChequingAccount = new ChequingAccount("CHEQUING123", 500.00, 300);
		myChequingAccount.withdraw(300);
		myChequingAccount.displayAccountInfo();
	}

}
