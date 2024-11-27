--Create the stored procedure 
CREATE OR REPLACE PROCEDURE "insertBulkUser"()
LANGUAGE plpgsql
AS $$
DECLARE
		randomNumberStartLimit INTEGER;
		randomNumberEndLimit INTEGER;
		randomNumberGenerated INTEGER;
BEGIN
		randomNumberStartLimit = 10000;
		randomNumberEndLimit = 20000;
		FOR _index IN 1..50 LOOP 
		randomNumberGenerated = floor(random() * (randomNumberStartLimit-randomNumberEndLimit + 1) 
								+ randomNumberEndLimit);
		INSERT INTO "user" ("firstName", "lastName", "username", "phone", "emailId", "password", 
							"emailVerified", "createdOn")
		VALUES (concat('firstName',_index),concat('lastName',_index),concat('username',_index), 
				randomNumberGenerated, concat('username',_index,'@email.com'), concat('password',_index), 
				false, NOW());
		END LOOP;
END; 
$$


-- Call this procedure and do bulk insert
CALL "insertBulkUser"();


-- Perform a SELECT operation on User table to verify the insertion
SELECT * FROM "user";
