-- Build a single SQL query to achieve all of the following:
-- Select the truncated month and the count of users from the User table
-- Truncate the createdOn timestamp to the month level and format it as "YYYY-MM"
-- Count the number of users for each truncated month
-- Group the users by the truncated month
-- Order the results by month in ascending order


SELECT TO_CHAR(DATE_TRUNC('month',"createdOn"),'YYYY-MM') AS month,
COUNT ("userId") AS "userCount" 
FROM "user"
GROUP BY DATE_TRUNC('month',"createdOn")
ORDER BY month ASC;
