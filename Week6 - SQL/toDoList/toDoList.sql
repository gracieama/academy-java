DROP DATABASE IF EXISTS "toDoList";

CREATE DATABASE todolist
WITH
	ENCODING='UTF8';


DROP TABLE IF EXISTS "taskCategories";
DROP TABLE IF EXISTS "tasks";
DROP TABLE IF EXISTS "users";
DROP TABLE IF EXISTS "userTasks";


CREATE TABLE "taskCategories"(
	"categoryId" SERIAL PRIMARY KEY,
	"categoryName" VARCHAR(50) NOT NULL
);

CREATE TABLE "tasks" (
	"taskId" SERIAL PRIMARY KEY,
	"taskName" VARCHAR(100) NOT NULL,
	"dueDate" DATE NOT NULL,
	"priority" INTEGER NOT NULL,
	"categoryId" INTEGER REFERENCES "taskCategories"("categoryId")
);

CREATE TABLE "users" (
	"userId" SERIAL PRIMARY KEY,
	"username" VARCHAR(50) NOT NULL,
	"email" VARCHAR(100) NOT NULL UNIQUE,
	"createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "userTasks"(
	"taskId" INT REFERENCES "tasks"("taskId") ON DELETE CASCADE,
	"userId" INT REFERENCES "users"("userId") ON DELETE CASCADE,
	"assignedDate" DATE DEFAULT CURRENT_DATE
);

ALTER TABLE "tasks"
ADD COLUMN "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE "tasks"
ALTER COLUMN "priority" TYPE VARCHAR(10);

ALTER TABLE "tasks"
RENAME COLUMN "taskName" TO "taskDescription";

-- INSERT INTO "taskCategories" ("categoryName") VALUES
-- ('Work'),
-- ('Personal'),
-- ('Urgent'),
-- ('Shopping'),
-- ('Fitness'),
-- ('Hobbies'),
-- ('Education'),
-- ('Miscellaneous');

INSERT INTO "taskCategories" ("categoryName") VALUES
('Work'),
('Personal'),
('Urgent'),
('Shopping'),
('Fitness'),
('Hobbies'),
('Education'),
('Miscellaneous');

INSERT INTO "users" ("username", "email") VALUES
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('charlie', 'charlie@example.com'),
('david', 'david@example.com'),
('eve', 'eve@example.com'),
('frank', 'frank@example.com'),
('grace', 'grace@example.com'),
('heidi', 'heidi@example.com');


INSERT INTO "tasks" ("taskDescription", "dueDate", "priority",
"categoryId") VALUES
('Complete project proposal', '2024-11-01', 1, 1),
('Grocery shopping', '2024-10-30', 2, 4),
('Morning workout', '2024-10-29', 3, 5),
('Read a book', '2024-11-05', 2, 6),
('Finish homework', '2024-11-02', 1, 7),
('Schedule doctor appointment', '2024-11-10', 3, 2),
('Plan vacation', '2024-12-01', 1, 8),
('Pay bills', '2024-11-15', 2, 2),
('Organize workspace', '2024-10-31', 3, 1),
('Prepare for presentation', '2024-11-03', 1, 1),
('Buy birthday gift', '2024-11-20', 2, 4),
('Cook dinner', '2024-10-28', 3, 6),
('Visit family', '2024-11-12', 1, 2),
('Complete online course', '2024-11-18', 2, 7),
('Attend networking event', '2024-11-08', 1, 1),
('Finish cleaning house', '2024-10-29', 3, 5),
('Submit expense report', '2024-11-05', 1, 1),
('Prepare for interview', '2024-11-11', 2, 3),
('Join book club', '2024-11-15', 3, 6),
('Buy a new phone', '2024-11-25', 2, 8),
('Finalize budget plan', '2024-11-01', 1, 1),
('Watch a movie', '2024-10-30', 3, 6),
('Volunteer at local shelter', '2024-11-02', 1, 8),
('Plan a weekend trip', '2024-11-20', 2, 7),
('Research for project', '2024-11-03', 1, 1),
('Write a blog post', '2024-10-31', 3, 5),
('Take out the trash', '2024-10-29', 2, 4),
('Attend a seminar', '2024-11-08', 1, 7),
('Install new software', '2024-11-05', 2, 1),
('Update resume', '2024-11-15', 1, 2),
('Participate in a workshop', '2024-11-10', 2, 3),
('Clean out garage', '2024-11-12', 3, 5),
('Organize family gathering', '2024-11-17', 1, 8),
('Finish art project', '2024-11-20', 2, 6),
('Prepare tax documents', '2024-11-30', 1, 1),
('Submit job application', '2024-11-22', 2, 3),
('Attend fitness class', '2024-10-31', 3, 5),
('Participate in community service', '2024-11-05', 1, 8),
('Join a local club', '2024-11-12', 2, 7),
('Reorganize files', '2024-11-18', 1, 1),
('Plan monthly meeting', '2024-11-25', 2, 2),
('Create a vision board', '2024-11-10', 3, 6),
('Plant a garden', '2024-11-20', 2, 5),
('Attend yoga classes', '2024-11-15', 1, 5),
('Go for a hike', '2024-11-05', 3, 7),
('Join a cooking class', '2024-11-22', 2, 6),
('Explore new hobbies', '2024-11-18', 1, 8),
('Donate old clothes', '2024-11-15', 2, 4),
('Clean the car', '2024-10-30', 3, 5),
('Start a journal', '2024-11-01', 2, 6),
('Make a scrapbook', '2024-11-05', 3, 7),
('Check emails', '2024-10-29', 1, 1);



INSERT INTO "userTasks" ("taskId", "userId", "assignedDate")
VALUES
(1, 1, '2024-10-25'), -- Alice assigned to Complete project proposal
(2, 1, '2024-10-26'), -- Alice assigned to Grocery shopping
(3, 1, '2024-10-27'), -- Alice assigned to Morning workout
(1, 2, '2024-10-24'), -- Bob assigned to Complete project proposal
(4, 2, '2024-10-23'), -- Bob assigned to Finish homework
(5, 2, '2024-10-22'), -- Bob assigned to Schedule doctor appointment
(2, 3, '2024-10-23'), -- Charlie assigned to Grocery shopping
(6, 3, '2024-10-20'), -- Charlie assigned to Pay bills
(3, 4, '2024-10-21'), -- David assigned to Morning workout
(7, 4, '2024-10-19'), -- David assigned to Plan vacation
(5, 5, '2024-10-24'), -- Eve assigned to Schedule doctor appointment
(8, 5, '2024-10-25'), -- Eve assigned to Complete online course
(4, 6, '2024-10-23'), -- Frank assigned to Finish homework
(9, 6, '2024-10-26'), -- Frank assigned to Prepare for presentation
(6, 7, '2024-10-24'), -- Grace assigned to Organize workspace
(10, 7, '2024-10-20'), -- Grace assigned to Buy birthday gift
(11, 8, '2024-10-21'), -- Heidi assigned to Attend networking event
(12, 8, '2024-10-22'), -- Heidi assigned to Complete online course
(13, 1, '2024-10-25'), -- Alice assigned to Visit family
(14, 2, '2024-10-26'), -- Bob assigned to Finish cleaning house
(15, 3, '2024-10-27'), -- Charlie assigned to Join book club
(16, 4, '2024-10-28'), -- David assigned to Install new software
(17, 5, '2024-10-29'), -- Eve assigned to Update resume
(18, 6, '2024-10-30'), -- Frank assigned to Join a local club
(19, 7, '2024-10-31'), -- Grace assigned to Attend yoga classes
(20, 8, '2024-11-01'), -- Heidi assigned to Clean the car
(21, 1, '2024-11-02'), -- Alice assigned to Organize family gathering
(22, 2, '2024-11-03'), -- Bob assigned to Prepare tax documents
(23, 3, '2024-11-04'), -- Charlie assigned to Complete project proposal
(24, 4, '2024-11-05'), -- David assigned to Research for project
(25, 5, '2024-11-06'), -- Eve assigned to Participate in a workshop
(26, 6, '2024-11-07'), -- Frank assigned to Join a cooking class
(27, 7, '2024-11-08'), -- Grace assigned to Explore new hobbies
(28, 8, '2024-11-09'), -- Heidi assigned to Donate old clothes
(29, 1, '2024-11-10'), -- Alice assigned to Make a scrapbook
(30, 2, '2024-11-11'), -- Bob assigned to Start a journal
(31, 3, '2024-11-12'), -- Charlie assigned to Watch a movie
(32, 4, '2024-11-13'), -- David assigned to Plan a weekend trip
(33, 5, '2024-11-14'), -- Eve assigned to Clean out garage
(34, 6, '2024-11-15'), -- Frank assigned to Check emails
(35, 7, '2024-11-16'), -- Grace assigned to Submit job application
(36, 8, '2024-11-17'), -- Heidi assigned to Attend fitness class
(37, 1, '2024-11-18'), -- Alice assigned to Go for a hike
(38, 2, '2024-11-19'), -- Bob assigned to Prepare for presentation
(39, 3, '2024-11-20'), -- Charlie assigned to Pay bills
(40, 4, '2024-11-21'), -- David assigned to Cook dinner
(41, 5, '2024-11-22'), -- Eve assigned to Volunteer at local shelter
(42, 6, '2024-11-23'), -- Frank assigned to Finalize budget plan
(43, 7, '2024-11-24'), -- Grace assigned to Watch a movie
(44, 8, '2024-11-25'), -- Heidi assigned to Research for project
(45, 1, '2024-11-26'), -- Alice assigned to Install new software
(46, 2, '2024-11-27'), -- Bob assigned to Attend a seminar
(47, 3, '2024-11-28'), -- Charlie assigned to Clean out garage
(48, 4, '2024-11-29'), -- David assigned to Prepare tax documents
(49, 5, '2024-11-30'), -- Eve assigned to Finish art project
(50, 6, '2024-12-01'); -- Frank assigned to Attend fitness class

CREATE INDEX "indexDueDate" On "tasks" ("dueDate")

CREATE INDEX "indexUserTasks" On "userTasks" ("userId", "taskId");

SELECT "taskId","taskDescription", "priority" FROM "tasks";

SELECT "taskId","taskDescription", "priority" FROM "tasks"
WHERE "dueDate" = CURRENT_DATE;

EXPLAIN SELECT "taskId","taskDescription", "priority" FROM "tasks";

EXPLAIN SELECT "taskId","taskDescription", "priority" FROM "tasks"
WHERE "dueDate" = CURRENT_DATE;


CREATE VIEW "highPriorityTasks" AS
	SELECT "taskDescription", "priority", "dueDate" FROM "tasks"
	WHERE "priority"='1';

SELECT * FROM "highPriorityTasks";

-- Update "tasks", modify 1->High, 2->Medium, 3->Low for the priority column
UPDATE "tasks" SET "priority"='High' WHERE "priority"='1';
UPDATE "tasks" SET "priority"='Medium' WHERE "priority"='2';
UPDATE "tasks" SET "priority"='Low' WHERE "priority"='3';

OR 

UPDATE "tasks" SET "priority"=
CASE
 	WHEN "priority"='1' THEN 'High'
 	WHEN "priority"='2' THEN 'Medium'
 	WHEN "priority"='3' THEN 'Low'
END;

SELECT * FROM "tasks";

CREATE PROCEDURE "deleteFutureTasks"()
LANGUAGE plpgsql AS
$$
BEGIN
	DELETE FROM "tasks" WHERE "dueDate" > CURRENT_DATE - INTERVAL '3 days';
END
$$

CALL "deleteFutureTasks"();

SELECT * FROM "tasks";
SELECT * FROM "taskCategories";

ALTER SEQUENCE "tasks_taskId_seq" RESTART WITH 1;

CREATE FUNCTION "countHighPriorityTasks"()
RETURNS INT AS
$$
BEGIN
	RETURN (SELECT COUNT(*) FROM "tasks" WHERE "priority"='High');
END
$$
LANGUAGE plpgsql;

SELECT "countHighPriorityTasks"();


CREATE FUNCTION "getAllTasksForUser"("userId" INT)
RETURNS TABLE("taskDescription" VARCHAR, "dueDate" DATE) AS
$$
BEGIN
	RETURN QUERY SELECT "t"."taskDescription","t"."dueDate" FROM "tasks" "t"
	JOIN "userTasks" "ut" ON "t"."taskId" = "ut"."taskId"
	WHERE "ut"."userId"="userId";
END
$$
LANGUAGE plpgsql;

SELECT "getAllTasksForUser"();

DROP FUNCTION "getAllTasksForUser";


CREATE FUNCTION "getAllTasksForUser"(currentUserId INT)
RETURNS TABLE("taskDescription" VARCHAR, "dueDate" DATE) AS
$$
BEGIN
	RETURN QUERY 
	SELECT "t"."taskDescription","t"."dueDate" 
	FROM "tasks" "t"
	JOIN "userTasks" "ut" ON "t"."taskId" = "ut"."taskId"
	WHERE "ut"."userId"= currentUserId;
END
$$
LANGUAGE plpgsql;

SELECT "getAllTasksForUser"(4);


SELECT *
FROM pg_settings
WHERE name = 'port'

-- =================TRANSACTION EXAMPLE================================

SET TRANSACTION ISOLATION LEVEL READ COMMITTED; -- other option -> READ ONLY

BEGIN;
CREATE TABLE "moreCategories"(
	"categoryId" SERIAL PRIMARY KEY,
	"categoryName" VARCHAR(50) NOT NULL
);
INSERT INTO "moreCategories" ("categoryName")
VALUES ('Work'), ('Personal'), ('Urgent');
SAVEPOINT saveAfterInsert;
INSERT INTO "tasks" ("taskDescription", "dueDate", "priority",
"categoryId") VALUES ('Finish SQL Training', '2024-11-01', 'High', 1);
UPDATE "tasks" SET "priority"='Low' WHERE "taskDescription" LIKE ('Finish SQL Training');
ROLLBACK TO SAVEPOINT saveAfterInsert;
-- GRANT SELECT ON "moreCategories" TO 'postgres';
-- REVOKE INSERT ON "moreCategories" TO 'postgres';
COMMIT;
-- ROLLBACK;

