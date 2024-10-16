package Week1.Oop.Bank;

class ChequingAccount extends BankAccount {

	private double overDraftLimit;

	public ChequingAccount(String accountNumber, double initialBalance, double overDraftLimit) {
		super(accountNumber, initialBalance); // refers to the constructor of the current class
		this.overDraftLimit = overDraftLimit; // initializes the new value
	}

	@Override
	public void withdraw(double amount) {
		if (amount > 0 && amount <= (getBalance() + overDraftLimit)) {
			super.withdraw(amount);
		}
	}
}