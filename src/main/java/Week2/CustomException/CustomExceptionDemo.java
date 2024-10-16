package Week2.CustomException;


public class CustomExceptionDemo {

	private double accountBalance;

	public CustomExceptionDemo(double accountBalance) {
		this.accountBalance = accountBalance;
	}

	public void withdraw(double amountToWithdraw) throws InsufficientBalanceException {
		if (accountBalance >= amountToWithdraw) {
			this.accountBalance -= amountToWithdraw;
			System.out.println("Withdrawal Successful!");
		} else {
			throw new InsufficientBalanceException("Insufficient funds!");
		}
	}

	public static void main(String[] args) {
		CustomExceptionDemo myDemo = new CustomExceptionDemo(1000.00);
		try {
			myDemo.withdraw(1500);
		} catch (InsufficientBalanceException e) {
			System.out.println(e.getMessage());
		}
	}

}