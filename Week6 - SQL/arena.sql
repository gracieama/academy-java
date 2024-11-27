CREATE TABLE "arena" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "eventDate" DATE NOT NULL UNIQUE,
    "peopleCount" INTEGER NOT NULL
);

INSERT INTO "arena" ("id", "eventDate", "peopleCount") 
VALUES
(1, '2022-03-01', 10),
(2, '2022-03-02', 109),
(3, '2022-03-03', 150),
(4, '2022-03-04', 99),
(5, '2022-03-05', 145),
(6, '2022-03-06', 1455),
(7, '2022-03-07', 199),
(8, '2022-03-09', 188);

with cte
as
(
	select 
		*, 
		count(1) over (partition by "cluster") cluster_count
	from
	(
		select aa.*,
		(
			select count(id)
			from "arena"
			where "peopleCount" < 100
			and id < aa.id
		) as "cluster"
		from "arena" aa
		where "peopleCount" >= 100
	) t1
)
select 
	"id", "eventDate", "peopleCount" 
from cte 
where "cluster_count" >= 3


SELECT "id", "eventDate", "peopleCount" 
FROM "arena" 
	ORDER BY "id" OPERATOR
	(SELECT "id", "eventDate", "peopleCount" 
	FROM "arena" 
	WHERE peopleCount >= 100);




WITH consecutiveIds AS (
SELECT "id", "eventDate", "peopleCount",             
ROW_NUMBER() OVER (ORDER BY "id") - "id" AS grp
FROM "arena"
WHERE "peopleCount" >= 100
)
SELECT "id", "eventDate", "peopleCount"
FROM consecutiveIds
WHERE grp IN (
    SELECT grp
    FROM consecutiveIds
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
ORDER BY "eventDate";



