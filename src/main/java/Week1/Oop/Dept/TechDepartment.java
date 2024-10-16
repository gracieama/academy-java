package Week1.Oop.Dept;

class TechDepartment extends Department {

	private double totalPurchaseAmt;

	public TechDepartment(String departmentName, int numberOfEmployees, double totalPurchaseAmt) {
		super(departmentName, numberOfEmployees);
		this.totalPurchaseAmt = totalPurchaseAmt;
	}
}
