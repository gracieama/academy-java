package com.bptn.course.Week4.junit.FileHandling;



//		//To check if a file exists, we use the exists API:
//		Path p = Paths.get(HOME);
//		System.out.println(Files.exists(p));
//		
//		//To check that a file does not exist, we use the notExists API:
//		Path p1 = Paths.get(HOME + "/inexistent_file.txt");
//		System.out.println(Files.notExists(p1));
//		
//		//We can also check if a file is a regular file like myfile.txt or is just a directory. To do so, we use the isRegularFile API:
//		System.out.println(Files.isRegularFile(p));
//		
//		//There are also static methods to check for file permissions. To check if a file is readable, we use the isReadable API:
//		System.out.println(Files.isReadable(p));
//		
//		//To check if it is writable, we use the isWritable API:
//		System.out.println(Files.isWritable(p));
//		
//		//Similarly, to check if it is executable:
//		System.out.println(Files.isExecutable(p));
//		
//		//When we have two paths, we can check if they both point to the same file on the underlying file system using isSameFile:
//		Path p2 = Paths.get(HOME);
//		System.out.println(Files.isSameFile(p, p2));



// creating a file
//		//All the name elements in the path must exist, apart from the file name, otherwise, we will get an IOException:
//		String fileName="myfile_"+UUID.randomUUID().toString()+".txt";Path p=Paths.get(HOME+"/"+fileName);if(!Files.exists(p)){Files.createFile(p);}System.out.println(Files.exists(p));
//		
//		//In the above example, when we first check the path, it is nonexistent, then, after the createFile operation, it is found to exist.
//		
//		//To create a directory, we use the createDirectory API:
//		String dirName="myDir_"+UUID.randomUUID().toString();Path p1=Paths.get(HOME+"/"+dirName);if(!Files.exists(p1)){Files.createDirectory(p1);}System.out.println(Files.exists(p1));System.out.println(Files.isRegularFile(p1));System.out.println(Files.isDirectory(p1));

// deleting a file
//		Path p = Paths.get(HOME + "/fileToDelete.txt");
//		if(!Files.exists(p)){
//		    Files.createFile(p);
//		}
//		System.out.println(Files.exists(p));
//		Files.delete(p);
//		System.out.println(Files.exists(p));
//		
//		// However, if a file is not existent in the file system, the delete operation will fail with an IOException.
//		// We can avoid this scenario by using deleteIfExists which will simply fail silently if the file does not exist. 
//		//This is important when multiple threads are performing this operation and we don't want a failure message simply 
// 		//because a thread performed the operation earlier than the current thread which has failed.
//		
//		Path p1 = Paths.get(HOME + "/inexistentFile.txt");
//		System.out.println(Files.exists(p1));
//		Files.deleteIfExists(p1);
//		
//		// When dealing with directories and not regular files, we should remember that the delete operation does not work recursively by default. So if a directory is not empty it will fail with an IOException:
//		
//		Path dir = Paths.get(HOME + "/emptyDir" + UUID.randomUUID().toString());
//		Files.createDirectory(dir);
//		System.out.println(Files.exists(dir));
//		
//		Path file = dir.resolve("file.txt");
//		Files.createFile(file);
//		Files.delete(dir);
//		System.out.println(Files.exists(dir));

//read from a file
//		import java.nio.file.*;
//		import java.util.Scanner;
//		
//		public static void main(String[] args) {
//		    Path p = Paths.get(HOME + "/fileToRead.txt");
//		    if(Files.exists(p)){
//		        Scanner scanner = new Scanner(new File(p.toUri()));
//		        while (scanner.hasNextLine()) {
//		            String data = scanner.nextLine();
//		            System.out.println("Data available in file :" + data);
//		        }
//		    }
//		}

//write to a file
//		import java.nio.file.*;
//		import java.io.FileWriter;
//		
//		public static void main(String[] args) {
//		    Path p = Paths.get(HOME + "/fileToWrite.txt");
//		    if(Files.exists(p)){
//		        FileWriter writer = new FileWriter(new File(p.toUri()));
//		        writer.write("I have learnt how to write into a file!");
//		        writer.close();
//		    }
//		}