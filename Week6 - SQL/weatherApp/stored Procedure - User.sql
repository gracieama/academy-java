--create the procedure
CREATE PROCEDURE "insertUser"("_firstName" VARCHAR, "_lastName" VARCHAR, "_username" VARCHAR, "_phone" VARCHAR, "_emailId" VARCHAR,
                              "_password" VARCHAR, "_emailVerified" BOOLEAN, "_createdOn" TIMESTAMP WITHOUT TIME ZONE)
LANGUAGE plpgsql
AS $$
--DECLARE
BEGIN
INSERT INTO "user" ("firstName", "lastName", "username", "phone", "emailId","password", "emailVerified", "createdOn")
			VALUES 	("_firstName", "_lastName", "_username", "_phone", "_emailId","_password", "_emailVerified", "_createdOn");							 
COMMIT;
END;
$$
--call the procedure and pass parameter values
CALL "insertUser" ('John','Doe2','johndoe2','555-555-5555','johndoe2@email.com','password6',TRUE,'2022-02-22 12:00:00');
--select statement on "User" table
SELECT * FROM "user";