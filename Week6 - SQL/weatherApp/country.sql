-- create the "Country" table
CREATE TABLE "country"(
"countryId" INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
"countryCode" VARCHAR(50) NOT NULL
);
-- Insert a new row into the "Country" table with a "countryCode" of 'CA'.
INSERT INTO "country" ("countryCode")
       VALUES ('CA');
--Insert two new rows into the "Country" table with "countryCode" values of 'DE' and 'IT'.
INSERT INTO "country" ("countryCode")
     VALUES ('DE'), ('IT');
	      
		 
--Select all rows from the "Country" table.
SELECT * FROM "country";
--Select the "countryCode" value for the row with "countryId" equal to 3.
SELECT "countryId","countryCode" FROM "country" WHERE "countryId" = 3;
--Update the "countryCode" value to 'UK' for the row with "countryId" equal to 1.
UPDATE "country"
SET "countryCode" = 'UK' WHERE "countryId" = 1;
--Update the "countryCode" value to 'FR' for the row with "countryId" equal to 2.
UPDATE "country"
SET "countryCode" = 'FR' WHERE "countryId" = 2;
--Delete the row from the "Country" table with "countryId" equal to 3.
DELETE FROM "country" WHERE "countryId" = 3;
SELECT * FROM "country"