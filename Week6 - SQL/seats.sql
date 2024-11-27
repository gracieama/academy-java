CREATE TABLE "seat" (
"id" INTEGER PRIMARY KEY NOT NULL,
"student" VARCHAR(100) NOT NULL
);

INSERT INTO "seat" ("id", "student")
VALUES 
(1, 'Abbot'),
(2, 'Doris'),
(3, 'Emerson'),
(4, 'Green'),
(5, 'Jeames');

SELECT "id", "student"
FROM "seat"
