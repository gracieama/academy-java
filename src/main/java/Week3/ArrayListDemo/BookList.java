package Week3.ArrayListDemo;

import java.util.ArrayList;

public class BookList {

	public static void main(String[] args) {
		// create a new arraylist
		ArrayList<String> myBooks = new ArrayList<>();
		int counter = 1;

		// add 3 books to the list
		myBooks.add("Hunger Games");
		myBooks.add("Things fall Apart");
		myBooks.add("Animal Farm");

		// display all books
		System.out.println("My Favourite books are: " + myBooks);

		// OR
		for (String book: myBooks) {
			System.out.println("Book" + counter + ":" + book);
			counter++;
		}
		
		//display the first book from the list
		System.out.println(myBooks.get(0));

		// OR
		System.out.println(myBooks.getFirst());

		// delete the second book
		myBooks.remove(1);
		System.out.println("My favourite books are: " + myBooks);

		// search for a book
		if (myBooks.contains("harry potter".toLowerCase())) {
			System.out.print("Book found.");
		} else {
			System.out.print("Book not found.");
		}
		// get last book
		System.out.println("The last item of the list is: " + myBooks.get(myBooks.size() - 1));

	}

}
