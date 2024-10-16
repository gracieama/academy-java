package Week1.Oop;

public class Persons {
	   // instance variables
	   private String name;
	   private String email;
	   private String phoneNumber;

	   // constructor: construct a Person copying in the data into the instance variables
		public Persons(String initName, String initEmail, String initPhone) {
	      name = initName;
	      email = initEmail;
	      phoneNumber = initPhone;
	   }

	   // Print all the data for a person
	   public void print() {
	     System.out.println("Name: " + name);
	     System.out.println("Email: " + email);
	     System.out.println("Phone Number: " + phoneNumber);
	   }

	   // main method for testing
	   public static void main(String[] args) {
	      // call the constructor to create a new person
			Persons p1 = new Persons("Sana", "sana@gmail.com", "123-456-7890");
	      // call p1's print method
	      p1.print();
			Persons p2 = new Persons("jean", "jean@gmail.com", "404 899-9955");
	      p2.print();

	     
	   }
	}


	/*
	 * To create a new object and call a constructor write: ClassName variableName =
	 * new ClassName(parameters); World world = new World(); // create a new World
	 * object Turtle t = new Turtle(world); // create a new Turtle object with the
	 * world parameter, thereby placing the turtle into that "world"
	 * 
	 * World world = new World(); Turtle t1 = new Turtle(world); //place in center
	 * of world Turtle t2 = new Turtle(50, 100, world); //place at 50, 100
	 * 
	 * 
	 * public class TurtleTest2 { public static void main(String[] args) { World
	 * habitat = new World(300, 300, Color.WHITE); Turtle yertle = new
	 * Turtle(habitat); yertle.forward(100); yertle.left(90); yertle.forward(100);
	 * yertle.goTo(0,0);
	 * 
	 * 
	 * 
	 * Turtle mertle = new Turtle(habitat); mertle.forward(100);
	 * 
	 * }
	 * 
	 * 
	 */
