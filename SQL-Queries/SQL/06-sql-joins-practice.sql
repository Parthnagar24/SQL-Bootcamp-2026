/*
Joins are used for columns 
mainly used for combining small tables into a big table for better
visualization, for data enrichment for getting extra info
and for filtering data

*/

/*
Inner join is used to retrive matching data between multiple tables
with a condition to be used and order of table does not matter
*/


SELECT * FROM customers
SELECT * FROM orders


SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id    --bec of this condition only matching values are retrieved


/*
Left join is used to retrieve all data from main table and only
matching values from the 2nd table
vice versa is for right join
order of tables is must 
*/

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id 
--unmatched values will be by default NULL

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id 

--Full join is used to retrieve both tables data

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id

--CROSS JOIN - CARTESIAN PRODUCT

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
CROSS JOIN orders AS o
--no condition is required here


--Anti left join returns row from left that has no match in right

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE  o.customer_id IS NULL

--Anti right join returns row from right that has no match in left

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE   c.id  IS NULL


--Anti full join returns only the unmatched data from both tables

SELECT 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE 
	c.id IS NULL OR o.customer_id IS NULL