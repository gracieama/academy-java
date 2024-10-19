package com.bptn.course.Week4.junit.FunctionalInterface_Lambda;

//		(parameters) -> {

//		    // Code to run, optionally using those parameters
//		};
//		
//		// If you only have one statement to run, you can even omit the curly braces:
//		(parameters) -> codeForThingToReturn;
//		
//		// And if you don't need any parameters, you just put the empty parentheses:
//		() -> codeForThingToReturn;

//		//With no parameter:
//		() -> { code to run };
//		
//		//With a single parameter:
//		(parameter) -> { code to run using parameter };
//		
//		//With multiple parameters:
//		(param1, param2, paramN) -> { code to run using the params };

//		//With return statement:
//		() -> {
//		 thingToDo;
//		 otherThingToDo;
//		 return whatToReturn;
//		};
//		
//		//With implicit return. If there's only one statement, a lambda will automatically return the result of that statement:
//		() -> whatToDoAndReturn;

//			for-each statement
//      arrayName.forEach( (item) -> { System.out.println(item); } );

//		//This annotation is technically optional, but you should always use it when creating a functional interface because it provides an extra layer of compiler checking for you:
//		@FunctionalInterface
//		public interface FunctionalInterfaceName {
//		 // Here, we define an abstract method, complete with the types that we want the compiler to check for when we write our lambda: 
//		 returnType methodName(inputType inputVariableName);
//		}
