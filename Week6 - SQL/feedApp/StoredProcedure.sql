DROP PROCEDURE IF EXISTS userInsertFeed(INTEGER, VARCHAR, VARCHAR);


-- Define and Create the store procedure as instructed (steps 1 to 8)
CREATE OR REPLACE PROCEDURE userInsertFeed
("_userId" INTEGER, "_content" VARCHAR(1000), "_picture" VARCHAR(1000))
LANGUAGE plpgsql
AS
$$
    DECLARE
        "userExists" INTEGER := 0;
    BEGIN
		SELECT COUNT("userId") FROM "user" INTO "userExists"
		WHERE "userId" = "_userId";
		IF "userExists" != 1 THEN
      RAISE NOTICE 'Invalid user details';
    ELSE
      INSERT INTO "feed" ("userId", "content", "picture", "createdOn") 
	  VALUES 
	  ("_userId", "_content", "_picture", CURRENT_TIMESTAMP); 
    END IF;
    END;
$$;

-- Call the procedure by passing values.
CALL userInsertFeed(5, 'This is an interesting one', 'path/to/picture.jpg');


-- Select all rows from the "Feed" table
SELECT * FROM "feed";