package com.bptn.course.Week4.junit.MethodReference;

//		how to write a method reference
//		
//		WhereTheMethodLives::methodName

//		Type	Syntax	As a Method Reference	As a Lambda Expression
//		
//		Reference to a static method	
//		ContainingClassName::staticMethodName	
//		String::valueOf	
//		s → String.valueOf(s)
//		
//		References to an instance method of a given object	
//		ContainingObject::instanceMethodName	
//		s::toString	
//		s → s.toString()
//		
//		Reference to a constructor	
//		ClassName::new	
//		String::new	
//		() → new String()