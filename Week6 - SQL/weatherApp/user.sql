-- Create the "User" table
CREATE TABLE "user" (
"userId" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
"firstName" VARCHAR (100) NOT NULL,
"lastName" VARCHAR (100) NOT NULL,
"username" VARCHAR (100) NOT NULL,
"phone" VARCHAR (100) NOT NULL,
"emailId" VARCHAR (100) NOT NULL,
"password" VARCHAR (100) NOT NULL,
"emailVerified" BOOLEAN NOT NULL DEFAULT false,
"createdOn" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
CONSTRAINT "userPkey" PRIMARY KEY ("userId"),
CONSTRAINT "userEmailIdKey" UNIQUE ("emailId"),
CONSTRAINT "userUsernameKey" UNIQUE ("username")
);
-- Insert a new row into the "User" table
INSERT INTO "user" ("firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn")
            VALUES ('John', 'Doe', 'johndoe', '+1-555-1234', 'johndoe@example.com', 'password123', true, NOW());
			
-- Insert multiple users with a single query using a VALUES list
INSERT INTO "user" ("firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn")
            VALUES ('Amy', 'Lee', 'amylee', '+1-555-9012', 'amylee@example.com', 'password789', true, NOW()),
                   ('Tom', 'Jones', 'tomjones', '+1-555-3456', 'tomjones@example.com', 'passwordabc', false, NOW());
-- Select all rows from the "User" table
SELECT * FROM "user";
-- Select all rows from the "User" table where the value of the "emailVerified" column is true.
SELECT * FROM "user" WHERE "emailVerified" = true;
-- Select all rows from the "User" table where the value of the "userId" column is 1.
SELECT * FROM "user" WHERE "userId" = 1;
-- Select all rows from the "User" table where the value of the "emailId" column is 'johndoe@example.com'.
SELECT * FROM "user" WHERE "emailId" = 'johndoe@example.com';




--insert 5 new records into User table
INSERT INTO "user" ("firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn")
            VALUES ('John', 'Doe1', 'johndoe1', '1234567890', 'johndoe1@example.com', 'password1', true, now()),
					('Jane', 'Doe', 'janedoe', '2345678901', 'janedoe@example.com', 'password2', true, now()),
					('Bob', 'Smith', 'bobsmith', '3456789012', 'bobsmith@example.com', 'password3', true, now()),
					('Alice', 'Johnson', 'alicejohnson', '4567890123', 'alicejohnson@example.com', 'password4', true, now()),
					('Mike', 'Brown', 'mikebrown', '5678901234', 'mikebrown@example.com', 'password5', true, now());


--select all users whose first name starts with the letter 'J'.
SELECT * FROM "user" WHERE "firstName" LIKE 'J%';


--maximum and minimum values of the "userId" column in the "User" table.
SELECT MIN ("userId") AS "minUserId", MAX ("userId") AS "maxUserId" FROM "user";


--count the number of users in the table whose email addresses end with '@example.com'.
SELECT COUNT (*) FROM "user" WHERE "emailId" LIKE '%@example.com'


--retrieve user records from the "User" table where the last name is either 'Doe' or 'Johnson'.
SELECT * FROM "user" WHERE "lastName" = 'Doe' OR "lastName" = 'Johnson';


-- retrieve all distinct phone numbers from the "User" table.
SELECT DISTINCT "phone" FROM "user";