-- Create the "Feed" table
CREATE TABLE "feed"(
 "feedId" INTEGER GENERATED ALWAYS AS IDENTITY,
 "userId" INTEGER NOT NULL,
 "content" VARCHAR(1000) NOT NULL,
 "picture" VARCHAR(1000) NOT NULL,
 "createdOn" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
 CONSTRAINT "feedUserId" FOREIGN KEY("userId")
   REFERENCES "user"("userId"),
 CONSTRAINT "feedPKey" PRIMARY KEY("feedId")
);

-- Insert a new row into the "Feed" table.
INSERT INTO "feed"("userId", "content", "picture","createdOn")
VALUES
(2, 'This is my first post!', 
'https://static.vecteezy.com/system/resources/previews/005/162/430/original/cartoon-happy-superhero-girl-posing-free-vector.jpg', NOW());

-- Insert two new rows into the "Feed" table for other users.
INSERT INTO "feed"("userId", "content", "picture","createdOn")
VALUES
(1, 'Hello World!', 'https://static.vecteezy.com/system/resources/previews/005/162/430/original/cartoon-happy-superhero-girl-posing-free-vector.jpg', NOW()),
(4, 'I like this app!', 'https://static.vecteezy.com/system/resources/previews/005/162/430/original/cartoon-happy-superhero-girl-posing-free-vector.jpg', NOW()),
(5, 'I like this app!', 'https://static.vecteezy.com/system/resources/previews/005/162/430/original/cartoon-happy-superhero-girl-posing-free-vector.jpg', NOW());


-- Select all rows from the "Feed" table
SELECT * FROM "feed";

-- Update the feed content for the feed with feedId = 1
UPDATE "feed" 
SET "content"='This is now edited' 
WHERE "feedId"=1;

-- Delete feed with feedId = 2
DELETE FROM "feed" 
WHERE "feedId"=2;

-- Get a specific feed from the “Feed” table with feedId = 1 
SELECT "feedId", "content" FROM "feed" 
WHERE "feedId" = 1;

-- Join the "User" and "Feed" tables.
SELECT * FROM "user" AS "u"
FULL JOIN "feed" AS "f"
ON "u"."userId" = "f"."userId";

-- Join the "User" and "Feed" tables to display the rows for username = 'amylee'
SELECT * FROM "user" AS "u"
LEFT JOIN "feed" AS "f"
ON "u"."userId" = "f"."userId"
WHERE "u"."username" = 'amylee';
