-- Create the "User" table
CREATE TABLE "user" (
  "userId" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  "firstName" VARCHAR(100) NOT NULL , 
  "lastName" VARCHAR(100) NOT NULL, 
  "username" VARCHAR(100) NOT NULL, 
  "phone" VARCHAR(100) NOT NULL, 
  "emailId" VARCHAR(100) NOT NULL,  
  "password"  VARCHAR(100) NOT NULL,
  "emailVerified"  BOOLEAN NOT NULL DEFAULT FALSE,
  "createdOn" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT "userPkey" PRIMARY KEY ("userId"),
  CONSTRAINT "userEmailIdkey" UNIQUE ("emailId"),
  CONSTRAINT "userUsernamekey" UNIQUE ("username")
);

-- Insert a new row into the "User" table
  INSERT INTO "user" ("firstName", "lastName", "username", "phone", 
  "emailId", "password", "emailVerified", "createdOn") VALUES
('Jessie', 'Doe', 'jessiedoe', '+1-555-1234', 'jessiedoe@example.com',
'password123', true, NOW());

-- Select all rows from the "User" table
SELECT * FROM "user";

-- Insert multiple users with a single insert statement using a VALUES list
INSERT INTO "user" (
  "firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn") 
  VALUES
('Amy', 'Lee', 'amylee', '+1-555-9012', 'amylee@example.com', 'password789', true, NOW()),
('Tom', 'Jones', 'tomjones', '+1-555-3456', 'tomjones@example.com', 'passwordabc', false, NOW()),
('Diana', 'Hill', 'dianahill', '+1-632-3456', 'dianahill@example.com', 'password123', false, NOW());

-- Select all rows from the "User" table where the value of the "emailVerified" column is true
SELECT * FROM "user" WHERE "emailVerified" = true;

-- Insert a few more users into the "User" table, (at least four more)
INSERT INTO "user" (
  "firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn") 
  VALUES
('John', 'Doe', 'johndoe', '+1-555-1111', 'johndoe@example.com', 'passwordxyz', true, NOW()),
('Jane', 'Smith', 'janesmith', '+1-555-2222', 'janesmith@example.com', 'password456', true, NOW()),
('Mark', 'Brown', 'markbrown', '+1-555-3333', 'markbrown@example.com', 'password789', false, NOW()),
('Emily', 'Clark', 'emilyclark', '+1-555-4444', 'emilyclark@example.com', 'passwordabc', true, NOW()),
('Michael', 'Johnson', 'michaeljohnson', '+1-555-5555', 'michael.johnson@example.com', 'password123', false, NOW());

-- Update user with username "tomjones"
UPDATE "user" SET "username" = 'randyjones' WHERE "username" = 'tomjones';

-- Select user with username "tomjones"
SELECT * FROM "user" WHERE "username" = 'tomjones';

-- Delete user with username "randyjones"
DELETE FROM "user" WHERE "username" = 'randyjones';

-- Select all rows from the "User" table
SELECT * FROM "user";
SELECT * FROM "user" WHERE "userId" = 3;

=======================================================================
-- Ceate the "Profile" table
CREATE TABLE "profile" (
  "profileId" INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  "userId" INT NOT NULL,
  "headline" VARCHAR(100) NOT NULL , 
  "picture" VARCHAR(255) NOT NULL, 
  "bio" VARCHAR(255) NOT NULL, 
  "city" VARCHAR(100) NOT NULL, 
  "country" VARCHAR(100) NOT NULL,  
  CONSTRAINT "profilePkey" PRIMARY KEY ("profileId"),
  CONSTRAINT "Profile_userId_fkey" FOREIGN KEY ("userId")
    REFERENCES "user" ("userId")
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID
);

-- Insert a new row into the "Profile" table
INSERT INTO "profile" (
  "userId", "headline", "bio", "city", "country", "picture") 
  VALUES
  (2, 'Wondergirl Amy!', 'My name is Amy and I am a super hero.',
  'Toronto', 'Canada', 
  'https://static.vecteezy.com/system/resources/previews/005/162/430/original/cartoon-happy-superhero-girl-posing-free-vector.jpg');

-- Select all rows from the "Profile" table
SELECT * FROM "profile";

-- Insert two new profiles with a single statement using a VALUES list. (use your won data)
INSERT INTO "profile" (
  "userId", "headline", "bio", "city", "country", "picture") 
  VALUES
(5, 'John', 'I love adventure and saving the day!', 
 'New York', 'USA', 
 'https://static.vecteezy.com/system/resources/previews/005/162/434/original/cartoon-male-superhero-in-action-free-vector.jpg'),
(6, 'Jane', 'I strive to make the world a better place.', 
 'London', 'UK', 
 'https://static.vecteezy.com/system/resources/previews/005/162/435/original/cartoon-female-superhero-with-a-shield-free-vector.jpg'),
(4, 'Diana', 'I strive to make the world a better place.', 
 'London', 'UK', 
 'https://static.vecteezy.com/system/resources/previews/005/162/435/original/cartoon-female-superhero-with-a-shield-free-vector.jpg'),
(1, 'Jessie', 'I strive to make the world a better place.', 
 'London', 'UK', 
 'https://static.vecteezy.com/system/resources/previews/005/162/435/original/cartoon-female-superhero-with-a-shield-free-vector.jpg');


-- Select all rows from the "Profile" table where the country is "Canada".
SELECT * FROM "profile" WHERE "country" = 'Canada';

-- Update the profile with userId = 2
UPDATE "profile" SET "bio" = 'I am Amy and I probably shouldn''t tell anyone I''m a super hero'
WHERE "userId" = 2;

-- Delete profile with profileId = 3
DELETE FROM "profile" Where "profileId" = 3;

-- Select all rows from the "Profile" table
SELECT * FROM "profile";

-- Select the row from the "Profile" table with userdId = 2
SELECT * FROM "profile" WHERE "userId" = 2;

-- Join the "User" and "Profile" tables to get all the details for ALL users (including the ones without a profile). Hint: Use an outer join.
SELECT *
FROM "user"
LEFT JOIN "profile"
ON "user"."userId" = "profile"."userId";

-- Join the "User" and "Profile" tables to get the details of the users who have a profile.
SELECT *
FROM "user"
RIGHT JOIN "profile"
ON "user"."userId" = "profile"."userId";

