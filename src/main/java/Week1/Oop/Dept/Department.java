package Week1.Oop.Dept;

class Department {

	private String departmentName;
	private int numberOfEmployees;

	public Department(String departmentName, int numberOfEmployees) {
		this.departmentName = departmentName;
		this.numberOfEmployees = numberOfEmployees;
	}

	public void showInfo() {
		System.out.println("Name of Department: " + departmentName);
		System.out.println("Number of Employees: " + numberOfEmployees);
	}

}
