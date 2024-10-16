package Week1.Oop.Dept;

class SalesDepartment extends Department {

	private double totalSalesAmt;

	public SalesDepartment(String departmentName, int numberOfEmployees, double totalSalesAmt) {
		super(departmentName, numberOfEmployees);
		this.totalSalesAmt = totalSalesAmt;
	}

}
