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
FULL OUTER JOIN "profile"
-- LEFT JOIN "profile"
ON "user"."userId" = "profile"."userId";

-- Join the "User" and "Profile" tables to get the details of the users who have a profile.
SELECT *
FROM "user"
RIGHT JOIN "profile"
-- INNER JOIN "profile"
ON "user"."userId" = "profile"."userId";