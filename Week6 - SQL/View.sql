-- Select statement that joins the User and the Profile tables (step 1)
-- Create the allUsersWithProfile VIEW

CREATE VIEW "allUsersWithProfile" AS
SELECT "user"."userId", ("user"."firstName" ||''|| "user"."lastName") AS "name",
"user"."username", "profile"."headline", "profile"."bio", "profile"."picture"
FROM "user"
INNER JOIN "profile"
ON "user"."userId" = "profile"."userId";

-- Call the allUsersWithProfile VIEW
SELECT * FROM "allUsersWithProfile";
SELECT * FROM "allUsersWithProfileView";

-- Rename the allUsersWithProfile VIE
ALTER VIEW "allUsersWithProfile" RENAME TO "allUsersWithProfileView";

-- Insert a new row into the "User" table
INSERT INTO "user" ("firstName", "lastName", "username", "phone", 
  "emailId", "password", "emailVerified", "createdOn") VALUES
('Charlie', 'Williams', 'charlie_williams', '345-678-9012', 
'charlie.williams@example.com', 'yetAnotherPassword789', true, 
CURRENT_TIMESTAMP);

-- RETURNING "userId";

-- Insert a new row into the "Profile" table
INSERT INTO "profile" (
  "userId", "headline", "bio", "city", "country", "picture") 
  VALUES
  (13, 'Travel Blogger', 'Exploring the world one city at a time.', 'New York', 'USA', 
  'https://static.vecteezy.com/system/resources/previews/005/162/430/original/cartoon-happy-superhero-girl-posing-free-vector.jpg');

-- Call the allUsersWithProfileView VIEW
SELECT * FROM "allUsersWithProfileView";

-- Drop the allUsersWithProfileView VIEW
DROP VIEW "allUsersWithProfileView";