DROP TABLE "feedMetaData"

-- Create the "FeedMetaData" table
CREATE TABLE "feedMetaData"(
 "feedMetaDataId" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
 "feedId" INTEGER NOT NULL,
 "actionUserId" INTEGER NOT NULL,
 "isLike" BOOLEAN NOT NULL DEFAULT FALSE,
  "comment" VARCHAR(1000),
 "createdOn" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  CONSTRAINT "feedMetaDataPkey" PRIMARY KEY("feedMetaDataId"),
 CONSTRAINT "feedMetaDataActionUserIdFkey" FOREIGN KEY("actionUserId")
   REFERENCES "user"("userId"),
CONSTRAINT "feedMetaDataFeedIdFkey" FOREIGN KEY("feedId")
   REFERENCES "feed"("feedId"));

-- Insert a new row into the "FeedMetaData" table.
INSERT INTO "feedMetaData" ("actionUserId", "feedId", "isLike", "comment", "createdOn")
VALUES 
(2, 1, TRUE, 'Thanks!', CURRENT_TIMESTAMP);

-- Insert two new rows into the "FeedMetaData" table.
INSERT INTO "feedMetaData" ("actionUserId", "feedId", "isLike", "comment", "createdOn")
VALUES 
    (5, 3, FALSE, 'Interesting post!', CURRENT_TIMESTAMP),
    (4, 4, TRUE, 'Great content!', CURRENT_TIMESTAMP);

-- Select all rows from the "FeedMetaData" table.
SELECT * FROM "feedMetaData";

-- Update the feedMetaData content for the feedMetaData with feedMetaDataId = 1
UPDATE "feedMetaData" SET "comment"= 'Thanks fam!'
WHERE "feedMetaDataId" = 1;

-- Delete feedMetaData with feedMetaDataId = 2
DELETE FROM "feedMetaData" WHERE "feedMetaDataId" = 2;

-- Select all rows from the "FeedMetaData" table.
SELECT * FROM "feedMetaData";

-- Select feedMetaData with feedMetaDataId = 1
SELECT * FROM "feedMetaData" WHERE "feedMetaDataId" = 1;

-- Join the "Feed" and "FeedMetaData" tables to display a row (or rows) for feedId = 1
SELECT * FROM "feed" 
FULL OUTER JOIN "feedMetaData"
-- LEFT JOIN "feedMetaData"
ON "feed"."feedId" = "feedMetaData"."feedId"
WHERE "feed"."feedId" = 1;

-- Join the "User", "Feed" and "FeedMetaData" tables to display a row (or rows) for userId = 2
SELECT * FROM "user"
FULL OUTER JOIN "feed" ON "user"."userId" = "feed"."userId"
FULL OUTER JOIN "feedMetaData" ON "feed"."feedId" = "feedMetaData"."feedId"
WHERE "user"."userId" = 2;
