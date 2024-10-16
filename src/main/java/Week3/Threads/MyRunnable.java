package Week3.Threads;

public class MyRunnable implements Runnable {

	@Override
	public void run() {
		for (int i = 0; i < 5; i++) {
			System.out.println("Thread: " + Thread.currentThread().getName());
		}

	}

}

//public class MyRunnable implements Runnable {
//    // Implement the run() method
//    @Override
//    public void run() {
//        // Define the behavior of the thread here
//        // This code will be executed when the thread starts
//        System.out.println("Hello from the run() method!");
//    }
//
//    public static void main(String[] args) {
//        // Create an instance of the class that implements Runnable
//        MyRunnable myRunnable = new MyRunnable();
//
//        // Create a Thread object and pass the instance of the Runnable implementation
//        Thread thread = new Thread(myRunnable);
//
//        // Start the thread
//        thread.start();
//    }
//}

////As stated above, you can also do something like this: 
//
//class MyThreadLogic extends MyBaseClass implements Runnable {
//  // The class inherits all the methods and attributes from MyBaseClass and also implements the run() method required by the Runnable interface.
//  
//  // Additional code specific to MyThreadLogic can be added here.
//}
