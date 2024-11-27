const students = [
  { name: "John", age: 18, major: "Computer Science" },
  { name: "Newton", age: 19, major: "Mathematics" },
  { name: "Barry", age: 20, major: "Physics" },
];

// Iterate through the array of objects students using for/of
    // Print a message to the console that includes the student's name, age, and major
    // Example: John is 18 years old and is studying Computer Science. 

for (const student of students) {
console.log(`${student.name} is ${student.age} years old and is studying ${student.major}.`)
} 
