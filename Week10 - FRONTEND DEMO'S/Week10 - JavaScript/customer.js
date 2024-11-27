// Consider this class
class Customer {
    constructor(firstName, lastName) {
        // You can write variables in this way, or use dot notation, as in this.firstName and this.lastname for variable assignment.
        let firstname = firstName;
        let lastname = lastName;

        this.getName = () => {
            return (`The customer's first name is ${firstname}, and their last
              name is: ${lastname}`);
        }
    }
}

// Let's create a newCustomer object:
let newCustomer = new Customer('John', 'Doe');

// If we run this console.log, it will return undefined. The details are unavailable to the outer scope of the object.
console.log(newCustomer.firstname); // undefined
// However, because we've created a method that shares the same scope as the two variables, this call will print out the sentence we've created:
console.log(newCustomer.getName()); // The customer's first name is John, and their last name is Doe