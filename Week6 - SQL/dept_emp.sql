CREATE TABLE "department" (
    "departmentId" INTEGER PRIMARY KEY,
    "department" VARCHAR(255) NOT NULL
);

CREATE TABLE "employee" (
    "employeeId" INTEGER PRIMARY KEY,
	"departmentId" INTEGER NOT NULL,
    "employee" VARCHAR(255) NOT NULL,
    "salary" INTEGER NOT NULL,
    FOREIGN KEY ("departmentId") REFERENCES department("departmentId")
);

INSERT INTO "department" ("departmentId", "department") VALUES
(1, 'IT'),
(2, 'Sales');

INSERT INTO "employee" ("employeeId", "employee", "salary", "departmentId")     
VALUES
(1, 'Joe', 70000, 1),
(2, 'Jim', 90000, 1),
(3, 'Henry', 80000, 2),
(4, 'Sam', 60000, 2),
(5, 'Max', 90000, 1);

SELECT d."department", e."employee", e."salary"
FROM "employee" e
LEFT JOIN "department" d
ON e."departmentId" = d."departmentId"
WHERE e."salary" =
(SELECT MAX("salary") 
FROM "employee" e
WHERE d."departmentId" = e."departmentId");




