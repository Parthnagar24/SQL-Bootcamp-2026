--NO JOIN 

SELECT * FROM customers
SELECT * FROM orders

/*
INNER JOIN  
- returns only matching data from tables
-table order does no matter
*/

SELECT *
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

/*
LEFT JOIN
-returns all values from 1st table and only matching values from 2nd table
-order of table does matter
*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

/*
RIGHT JOIN
-returns all values from 2nd table and only matching values from 1st table
-order of table does matter
*/

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id

-- best approach
SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id

--FULL JOIN : returns all data from both tables

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id


/*
LEFT ANTI JOIN
-returns rows from left that has no matching values in right
-order of table does matter
*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

/*
RIGHT ANTI JOIN
-returns rows from right that has no matching values in left
-order of table does matter
*/

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

--ANTI FULL JOIN : returns only rows that are not matching

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE
	(c.id IS NULL OR  o.customer_id IS NULL)

--CROSS JOIN : cross product amonng tables + no order of tables and no condition required

SELECT *
FROM customers
CROSS JOIN orders
