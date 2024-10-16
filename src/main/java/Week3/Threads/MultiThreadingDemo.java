package Week3.Threads;

public class MultiThreadingDemo {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		MyThread t1 = new MyThread();
		Thread t2 = new Thread(new MyRunnable());

		MyThread t3 = new MyThread();

		t1.start();
		t2.start();

		t1.sleep(5000);

		t1.join();

		System.out.println("Thread completed!");

		// start
		// run
		// join
		// sleep

	}

}
