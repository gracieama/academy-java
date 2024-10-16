package Week3.Threads;

public class MyThread extends Thread {

	@Override
	public void run() {
		for (int i = 0; i < 5; i++) {
			System.out.println("Thread: " + Thread.currentThread().getName());
		}

	}

}

//class MyThread extends Thread {
//
//    @Override
//    public void run() {
//        // Code to be executed in the thread
//    }
//}
