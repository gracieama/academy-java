-- Select all users whose first name is 'John' and last name is 'Doe'.'
SELECT * FROM "user" WHERE "firstName" = 'John' AND  "lastName" = 'Doe';


-- Select all users whose email is not 'johndoe@example.com'.
SELECT * FROM "user" WHERE "emailId" != 'johndoe@example.com';


-- Select all users whose email is either 'johndoe@example.com' or 'janedoe@example.com'.
 SELECT * FROM "user" WHERE "emailId" = 'johndoe@example.com' OR "emailId" = 'janedoe@example.com';


-- Select all users whose phone number starts with '555'.
SELECT * FROM "user" WHERE "phone" LIKE '555%';


-- Select all users whose first name starts with 'A' or 'B' and whose email is verified.
SELECT * FROM "user" WHERE "firstName" LIKE 'A%' OR "firstName" LIKE 'B%' AND "emailVerified" = true;