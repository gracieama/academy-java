DROP TABLE IF EXISTS "Orders";
DROP TABLE IF EXISTS "Products";
DROP TABLE IF EXISTS "Customers";


CREATE TABLE "Customers" (
  "customerId" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "customerName" VARCHAR(100) NOT NULL,
  "customerEmail" VARCHAR(120) UNIQUE NOT NULL,
  "customerPhone" VARCHAR(20) NOT NULL
);

CREATE TABLE "Products" (
  "productId" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "productName" VARCHAR(100) NOT NULL,
  "category" VARCHAR(50) NOT NULL,
  "price" FLOAT NOT NULL
);

ALTER TABLE "Products" ALTER COLUMN "productId" RESTART WITH 101;

CREATE TABLE "Orders" (
  "orderId" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "customerId" INTEGER NOT NULL,
  "orderDate" DATE NOT NULL,
  "productId" INTEGER NOT NULL,
  "quantity" INTEGER NOT NULL,
  FOREIGN KEY ("customerId") REFERENCES "Customers"("customerId"),
  FOREIGN KEY ("productId") REFERENCES "Products"("productId")
);

INSERT INTO "Customers" ("customerName", "customerEmail", "customerPhone")
VALUES
  ('John Doe', 'john.doe@example.com', '123-456-7890'),
  ('Jane Smith', 'jane.smith@example.com', '987-654-3210'),
  ('Michael Johnson', 'michael.johnson@example.com', '555-123-4567');

INSERT INTO "Products" ("productName", "category", "price")
VALUES
  ('Laptop', 'Electronics', 800),
  ('Headphones', 'Electronics', 100),
  ('T-shirt', 'Apparel', 20),
  ('Mouse', 'Electronics', 25);

INSERT INTO "Orders" ("customerId", "orderDate", "productId", "quantity")
VALUES
  (1, '2023-07-01', 101, 2),
  (2, '2023-07-02', 102, 1),
  (3, '2023-07-03', 103, 4),
  (1, '2023-07-04', 104, 3),
  (2, '2023-07-04', 101, 1),
  (3, '2023-07-05', 103, 2);

-- Write a query to SELECT the distinct product categories available.
SELECT DISTINCT "category" 
FROM "Products";

-- Write an SQL query to calculate the Total Sales for each product. 
-- The Total Sales represent the overall quantity of a product sold, 
-- which is obtained by summing up the quantities sold in all the Orders for that product.
-- Select productId and calculate the total quantity sold (Total Sales) for each product. 
-- Finally, rename the total quantity sold column as Total Sales
SELECT "Orders"."productId", 
SUM("Orders"."quantity") AS "Total Sales"
FROM "Orders" "Orders"
GROUP BY "Orders"."productId";

-- Write a query to SELECT the productId, productName, 
-- and Total Sales of the top 3 products with the highest sales. 
-- Note: The Total Sales is the sum of quantities of each product.
SELECT "Products"."productId", "Products"."productName", 
SUM("Orders"."quantity") AS "Total Sales"
FROM "Products" "Products"
JOIN "Orders" "Orders" 
ON "Products"."productId" = "Orders"."productId"
GROUP BY 
"Products"."productId", "Products"."productName"
ORDER BY "Total Sales" DESC
LIMIT 3;

-- Write a query to SELECT the customerId and customerName of the 
-- Customers who made purchases on July 4th, 2023.
SELECT "Customers"."customerId", "Customers"."customerName"
FROM "Customers" "Customers"
JOIN 
"Orders" "Orders" ON "Customers"."customerId" = "Orders"."customerId"
WHERE 
"Orders"."orderDate" = '2023-07-04';

--Write a query to find the total revenue generated from all orders on July 4th, 2023. 
--Display the total revenue as "Total Revenue". 
--Revenue is calculated by multiplying the price of each product by the quantity sold in each order. 
--The total revenue represents the combined amount earned from selling products on the specified date. 
--Hint: Use the SUM() function.
SELECT SUM("Products"."price" * "Orders"."quantity") AS "Total Revenue"
FROM "Orders"
JOIN "Products" ON "Orders"."productId" = "Products"."productId"
WHERE "Orders"."orderDate" = '2023-07-04';


-- Write a query to SELECT the customerId and customerName of the Customers who purchased Products 
-- from the “Electronics” category.
SELECT "Customers"."customerId", "Customers"."customerName" 
FROM "Customers"
JOIN "Orders"
ON "Customers"."customerId" = "Orders"."customerId"
JOIN "Products"
ON "Orders"."productId" = "Products"."productId"
WHERE "Products"."category" = 'Electronics';


-- Write a query to SELECT the productId and productName of the Products that were sold on July 3rd, 
-- 2023 and on July 5th, 2023. Hint: Use the INTERSECT operator.
SELECT "Orders"."productId", "Products"."productName"
FROM "Orders" "Orders"
JOIN "Products" "Products" ON "Orders"."productId" = "Products"."productId"
WHERE "Orders"."orderDate" = '2023-07-03'
INTERSECT
SELECT "Orders"."productId", "Products"."productName"
FROM "Orders" "Orders"
JOIN "Products" "Products" ON "Orders"."productId" = "Products"."productId"
WHERE "Orders"."orderDate" = '2023-07-05';

-- Write a query to SELECT the productId and productName of the Products that were sold on
 -- July 3rd, 2023 and on July 5th, 2023. Hint: Use the INTERSECT operator.
 SELECT "Orders"."productId", "Products"."productName"
FROM "Orders" "Orders"
JOIN "Products" "Products" ON "Orders"."productId" = "Products"."productId"
WHERE "Orders"."orderDate" = '2023-07-03'
INTERSECT
SELECT "Orders"."productId", "Products"."productName"
FROM "Orders" "Orders"
JOIN "Products" "Products" ON "Orders"."productId" = "Products"."productId"
WHERE "Orders"."orderDate" = '2023-07-05';



-- Write a query to combine the product names from both the “Electronics” and “Apparel” 
-- categories and display them. Hint: Use the UNION operator.
SELECT "productName"
FROM "Products"
WHERE "category" = 'Electronics'
UNION
SELECT "productName"
FROM "Products"
WHERE "category" = 'Apparel';




  
