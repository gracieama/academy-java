-- Retrieve the first name, last name, phone number, and email ID of a user whose "userId" is  retrieved using subquery 
--The subquery retrieves the user's "userId" for the user with the "username"='johndoe',which is used to filter the results in the outer query.
 
SELECT "firstName","lastName", "phone","emailId"
FROM "user" WHERE "userId" IN
(SELECT "userId" FROM "user"
WHERE "username" = 'johndoe');


-- Retrieves the first name, last name, username, phone number, and email ID of a user whose "userid" is retrieved using subquery   
-- This subquery is used to determine the maximum "userId" and then filters the results in the outer query using this value.
 
SELECT "firstName","lastName", "phone","emailId"
FROM "user" WHERE "userId" IN
(SELECT MAX("userId") FROM "user");