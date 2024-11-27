-- ==================CREATE===================

CREATE TABLE "courses" (
"courseId" INT GENERATED ALWAYS AS IDENTITY,
"courseName" VARCHAR(120) NOT NULL,
CONSTRAINT "courses_pk" PRIMARY KEY ("courseId")
);

CREATE TABLE "students" (
"studentId" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
"courseId" INT NOT NULL,
"studentName" VARCHAR(120) NOT NULL,
"studentEmail" VARCHAR(120) UNIQUE NOT NULL,
"studentPhone" VARCHAR(20),
FOREIGN KEY ("courseId")
	REFERENCES courses("courseId")
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
);

DROP TABLE courses;

-- "courses"
INSERT INTO "courses" ("courseName") VALUES
('Introduction to Computer Science'),
('Data Structures and Algorithms'),
('Database Management Systems'),
('Web Development Fundamentals'),
('Artificial Intelligence Basics'),
('Machine Learning Fundamentals'),
('Software Engineering Principles'),
('Computer Networks and Security'),
('Operating Systems Concepts'),
('Object-Oriented Programming'),
('Introduction to Python Programming'),
('Java Programming Essentials'),
('C++ Programming Fundamentals'),
('Data Analytics Techniques'),
('Information Retrieval Methods'),
('Mobile App Development'),
('Human-Computer Interaction'),
('Computer Graphics and Visualization'),
('Cloud Computing Technologies'),
('Big Data Analytics');


-- "students"
INSERT INTO "students" ("courseId", "studentName", "studentEmail", "studentPhone") VALUES
(1, 'John Smith', 'john.smith@gmail.com', '4165551234'),
(1, 'Emily Johnson', 'emily.johnson@yahoo.com', '6475552345'),
(2, 'Michael Davis', 'michael.davis@hotmail.com', '9055553456'),
(2, 'Sophia Brown', 'sophia.brown@gmail.com', '+14165554567'),
(3, 'William Wilson', 'william.wilson@yahoo.com', '647-555-5678'),
(3, 'Olivia Taylor', 'olivia.taylor@hotmail.com', '9055556789'),
(4, 'James Anderson', 'james.anderson@gmail.com', '416-555-7890'),
(4, 'Ava Thomas', 'ava.thomas@yahoo.com', '6475558901'),
(5, 'Benjamin Martinez', 'benjamin.martinez@hotmail.com', '9055559012'),
(5, 'Mia Hernandez', 'mia.hernandez@gmail.com', '4165550123'),
(6, 'Daniel Lopez', 'daniel.lopez@yahoo.com', '6475551234'),
(6, 'Charlotte Clark', 'charlotte.clark@hotmail.com', '9055552345'),
(7, 'Joseph Lewis', 'joseph.lewis@gmail.com', '4165553456'),
(7, 'Amelia Lee', 'amelia.lee@yahoo.com', '6475554567'),
(8, 'David Walker', 'david.walker@hotmail.com', '9055555678'),
(8, 'Sofia Hall', 'sofia.hall@gmail.com', '4165556789'),
(9, 'Andrew Young', 'andrew.young@yahoo.com', '6475557890'),
(9, 'Harper Hernandez', 'harper.hernandez@hotmail.com', '9055558901'),
(10, 'Alexander King', 'alexander.king@gmail.com', '416-555-9012'),
(10, 'Abigail White', 'abigail.white@yahoo.com', '6475550123'),
(11, 'Ethan Hill', 'ethan.hill@hotmail.com', '9055551234'),
(11, 'Emily Adams', 'emily.adams@gmail.com', '4165552345'),
(12, 'James Wright', 'james.wright@yahoo.com', '6475553456'),
(13, 'Avery Scott', 'avery.scott@hotmail.com', '9055554567'),
(14, 'Logan Green', 'logan.green@gmail.com', '4165555678'),
(15, 'Ella Martinez', 'ella.martinez@yahoo.com', '6475556789'),
(16, 'Lucas Rodriguez', 'lucas.rodriguez@hotmail.com', '9055557890'),
(17, 'Scarlett Perez', 'scarlett.perez@gmail.com', '4165558901'),
(18, 'Henry Cooper', 'henry.cooper@yahoo.com', '6475559012'),
(19,  'Jane Smith',   'jane@gmail.com', NULL),
(5,   'Bob Wilson',  'bob@hotmail.com', NULL);

-- =======================READ==========================
-- SELECT (specify what you want) FROM (name of the table) WHERE (conditions)

SELECT * FROM "courses";

SELECT * FROM "students";

SELECT "studentName", "studentEmail", "studentPhone" FROM students;

SELECT "studentName", "studentEmail", "studentPhone" FROM students WHERE
"studentPhone" IS NULL;

SELECT * FROM students WHERE "studentId"=1;

SELECT * FROM students WHERE "studentId">4 OR "studentName"='John Smith';

SELECT * FROM "students" WHERE "courseId" = 1 OR "courseId" = 2;

SELECT * FROM students WHERE "courseId"=15 AND "studentName"='Ella Martinez';

SELECT * FROM students WHERE "courseId"=15 AND "studentName" LIKE '%Mar%';

SELECT * FROM students WHERE "courseId"=15 AND "studentName" LIKE 'El%';

SELECT * FROM students WHERE "courseId" != 4;

-- ============ UPDATE ===============
 UPDATE (what you want to update) SET (new value) WHERE (condition);
 
 UPDATE students SET "studentName"='John', "studentEmail"='john@hello.com' WHERE
"studentId"=1;

--Update name of the student that has studentId = 1 to 'Alex' 
UPDATE "students" SET "studentName" = 'Alex' WHERE "studentId" = 1;

-- Update studentPhone to 18273124 where studentId = 1 and studentName = 'Alex' 
UPDATE "students" SET "studentPhone" = '4182731248' WHERE "studentName" = 'Sophia Brown';

-- Update studentPhone to NULL where studentId greater-than 10 and less-than 12
UPDATE "students" SET "studentPhone" = NULL WHERE "studentId" > 10 AND "studentId" < 12;

UPDATE "students" SET "studentName" = 'Alexandra' WHERE "studentId" = 5;

INSERT INTO "courses" ("courseName")
VALUES ('Quantum Computing');

INSERT INTO "students" ("courseId", "studentName", "studentEmail", "studentPhone")
VALUES (1, 'John Doe', 'john@doe.com', '4586272890');

INSERT INTO "students" ("courseId", "studentName", "studentEmail", "studentPhone")
VALUES (2, 'X', 'Y', '5768509832'),
(3, 'A', 'B', '8675309685');

-- ============ DELETE ===============
 DELETE FROM students WHERE "studentId"=1;

 -- Delete all students whose studentPhone field is empty
DELETE FROM "students" WHERE "studentPhone" IS NULL;


-- =====================GROUP BY===========================
-- count of the studentId’s present in the table
SELECT COUNT("studentId") AS "totalStudents", "courseId" FROM "students" 
WHERE "studentPhone" IS NOT NULL 
GROUP BY "courseId" 
ORDER BY "courseId";

SELECT "courseName" "courseId",
COUNT("courseName") AS "number" 
FROM "courses"
GROUP BY "courseName";

SELECT COUNT ("studentName") FROM "students";

-- =====================HAVING==========================
-- find the courses that have more than one student enrolled
SELECT c."courseName", COUNT(s."studentId") AS "totalStudents"
FROM "courses" c
JOIN "students" s ON c."courseId" = s."courseId"
GROUP BY c."courseName"
HAVING COUNT(s."studentId") > 1;

-- ==================ORDER BY============================
SELECT "studentId", "courseId", "studentName", "studentEmail", "studentPhone"
FROM "students"
ORDER BY "studentName" ASC;

SELECT "studentId", "courseId", "studentName", "studentEmail", "studentPhone"
FROM "students"
ORDER BY "studentName", "studentPhone" ASC;

-- ====================LIMIT====================================
SELECT column1, column2, ...
FROM table_name
LIMIT number_of_rows;

-- =======================JOIN==================================
-- Using dot notation, we tell PostgreSQL what we want to see output to the console: students.studentName and courses.courseName. We need the "" to tell PSQL what entities it's looking for, as explained in a previous lesson:
SELECT "students"."studentName", "courses"."courseName"
-- Here, we tell it the first table from which data will be taken:
FROM "students"
-- And then tell it to "join" that data with the other table from which the data should be taken:
INNER JOIN "courses"
-- Finally, we tell it what values it should be matching up in order to create the lines we want to see:
ON "students"."courseId" = "courses"."courseId";
-- The above will make sure that the values in students.courseId are matched up to the same values in courses.courseId.

-- get all courses, and the students enrolled in them if any
SELECT * from courses 
left join students on courses."courseId" = students."courseId";

SELECT * from courses 
RIGHT join students on courses."courseId" = students."courseId";

SELECT * from courses 
FULL join students on courses."courseId" = students."courseId";

-- returning the studentName and courseName, rather than the entire row that matches our JOIN condition
SELECT "courses"."courseId", "students"."studentName", "courses"."courseName"
FROM "students"
INNER JOIN "courses"
ON "students"."courseId" = "courses"."courseId";

SELECT s.id, c.id, s.studentName, c.courseName 
FROM students 
AS s 
INNER JOIN courses 
AS c 
ON s.id = c.id

-- ====================DISTINCT=========================
-- Get a list of all the courseIds for every course that students are taking:
SELECT DISTINCT "courseId" 
FROM "students" 
ORDER BY "courseId";

-- Get a list of all the names of courses
SELECT DISTINCT st."courseId", co."courseName" 
FROM "students" AS st 
INNER JOIN "courses" AS co 
ON st."courseId" = co."courseId" ORDER BY st."courseId";

SELECT "courses"."courseName", "courses"."courseId"
FROM "courses"
LEFT JOIN "students" ON "courses"."courseId" = "students"."courseId"
WHERE "studentId" IS NULL;
-- GROUP BY "courses"."courseName", "courses"."courseId";

SELECT COUNT(DISTINCT "studentName") FROM students;

-- ====================UNION==========================
SELECT column1, column2, columnN
FROM table1, table2, tableN
WHERE (conditions)
UNION
SELECT columnA, columnB, columnZ
FROM table3, table4, tableN
WHERE (conditions)

-- ====================INTERSECT==========================
SELECT column1, column2, columnN
FROM table1, table2, tableN
WHERE (conditions)
INTERSECT
SELECT columnA, columnB, columnZ
FROM table3, table4, tableN
WHERE (conditions)

-- ====================EXCEPT==========================
SELECT "courseId" FROM "courses"
EXCEPT 
SELECT "courseId" FROM "students";

-- ===============TRIGGERS================================
-- Run the following code to define the function (aka procedure) auditStudentFunc:
CREATE OR REPLACE FUNCTION auditStudentFunc() RETURNS TRIGGER AS $$
   BEGIN
      INSERT INTO "studentAudit"("studentId", "studentEnrolledDate") VALUES (new."studentId", current_timestamp);
      RETURN NEW;
   END;
$$ LANGUAGE plpgsql;

-- Create the trigger "auditTrigger," which will utilize the logic we wrote for the auditStudentFunc procedure:
CREATE TRIGGER "auditTrigger" AFTER INSERT ON "students"
FOR EACH ROW EXECUTE PROCEDURE auditStudentFunc();

-- =====CHECK FOR EXISTING TRIGGERS
select event_object_schema as table_schema,
       event_object_table as table_name,
       trigger_schema,
       trigger_name,
       string_agg(event_manipulation, ',') as event,
       action_timing as activation,
       action_condition as condition,
       action_statement as definition
from information_schema.triggers
group by 1,2,3,4,6,7,8
order by table_schema,
         table_name;


-- =================PROCEDURES=============================
CREATE [OR REPLACE] PROCEDURE procedure_name(parameter_list)
LANGUAGE plpgsql
AS $$
DECLARE
-- optional variable declarations happen here
BEGIN
-- stored procedure body, i.e., all of the logic you wish to execute happens here
    END; $$

	
CREATE OR REPLACE PROCEDURE insertStudent("_courseId" INTEGER, "_studentName" VARCHAR, "_studentEmail" VARCHAR, "_studentPhone" INTEGER)
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO "students" ("courseId", "studentName", "studentEmail", "studentPhone") 
		VALUES ("_courseId", "_studentName", "_studentEmail", "_studentPhone");
    END;
$$;

-- Let's call this function and insert a student:
CALL insertStudent(1, 'Ray Panamero', 'ray@panamero.com', 38173);


------------------------------------
CREATE OR REPLACE PROCEDURE insertBulkStudents("_courseId" INTEGER)
LANGUAGE plpgsql
AS
$$
    DECLARE
        randomNumberStartLimit INTEGER;
        randomNumberEndLimit INTEGER;
        randomNumberGenerated INTEGER;
    BEGIN
        randomNumberStartLimit = 10000;
        randomNumberEndLimit = 20000;
        FOR _index IN 1..50 LOOP
        randomNumberGenerated = floor(random() * (randomNumberStartLimit-randomNumberEndLimit + 1) + randomNumberEndLimit);
        INSERT INTO "students"("courseId", "studentName", "studentEmail", "studentPhone") 
		VALUES ("_courseId",concat('Student',_index),concat('student',_index,'@email.com'),randomNumberGenerated);
        END LOOP;
    END;
$$;

-- Let's call this procedure and perform the bulk insert:
CALL insertBulkStudents(1);


-- ==========================VIEW===========================
-- Creating a view for students that have a phone number
CREATE VIEW "students_view" AS
SELECT "studentId", "courseId", "studentName", "studentEmail", "studentPhone" 
FROM "students" WHERE "studentPhone" IS NOT NULL;

-- Call the view created
SELECT * FROM "students_view";

-- ==================INDEXES================================
INSERT INTO "students" ("courseId", "studentName", "studentEmail", "studentPhone") 
VALUES
(3, 'Grace Wang', 'gracewang@gmail.com', NULL),
(5, 'Peter Doon', 'pdoong@gmail.com', NULL),
(8, 'Wade Wills', 'wwz@gmail.com', NULL);

EXPLAIN 
SELECT "studentId", "courseId", "studentName", "studentEmail", "studentPhone" 
FROM "students"
WHERE "studentPhone" IS NULL;

-- Your output should look something like this:
-- QUERY PLAN Seq Scan on students (cost=0.00..16.49 rows=15 width=49) Filter: (studentPhone IS NULL)

CREATE INDEX index_name
ON table_name(column_list)
WHERE condition;

OR 

CREATE INDEX "idx_students_phone"
ON "students"("studentPhone");

OR

CREATE INDEX "idx_students_with_phone"
ON "students"("studentPhone")
SET enable_seqscan = OFF;
WHERE "studentPhone" IS NULL;

--sort the student names in desc order
CREATE INDEX "students_names_desc" 
ON "students"("studentName" DESC);

-- Expression Index
CREATE INDEX "students_lower_email" ON "students"(lower("studentEmail"));

-- Check if Indexing is helping a table in your db
EXPLAIN ANALYZE
SELECT "studentId", "courseId", "studentName", "studentEmail", "studentPhone" 
FROM "students"
WHERE "studentPhone" IS NULL;

-- Your output should look something like this:
-- QUERY PLAN Seq Scan on students (cost=0.00..16.49 rows=1 width=68) 
-- (actual time=1.320...1.320 rows=0 loops=1) 
-- Filter: (studentPhone IS NULL) Rows Removed by Filter: 5 
-- Planning Time: 4.225ms Execution Time: 1.823ms (5 rows)

-- ==================FUNCTIONS===========================
CREATE [OR REPLACE] FUNCTION function_name (arguments) 
RETURNS return_datatype AS $variable_name$
   DECLARE
      variable_declaration(s);
[...]
   BEGIN
      function_body
      [...]
   RETURN { variable_name | value }
   END; 
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION totalRecordsInStudents()
RETURNS INTEGER AS $total$
DECLARE
    total INTEGER;
BEGIN
   SELECT COUNT(*) INTO total FROM "students";
   RETURN total;
END;
$total$ 
LANGUAGE plpgsql;

-- To call this function and check the total records in the students table, run this statement:
SELECT totalRecordsInStudents();


-- =================SUBQUERIES===========================
SELECT column1, column2, columnN
FROM table1, table2, tableN
WHERE columnName =/IN
    (SELECT column1, column2, columnN
    FROM table1, table2, tableN
    WHERE [conditions]);


-- Get all the students for the course Web Development
SELECT "courseId", "studentId", "studentName", "studentEmail", "studentPhone" FROM students
WHERE "courseId" =
    (SELECT "courseId" 
     FROM courses 
     WHERE "courseName" = 'Web Development');


-- Get all the students for the course that was added last to the courses
SELECT "courseId", "studentId", "studentName", "studentEmail", "studentPhone" FROM "students" WHERE "courseId" = 
(SELECT MAX("courseId") FROM "courses");


UPDATE students
SET "studentPhone" = 8675309
WHERE "courseId" =
    (SELECT "courseId" 
     FROM courses 
     WHERE "courseName" = 'Web Development');