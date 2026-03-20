-- No Join
/* Retrieve all data from customers and orders as separate results */

SELECT * FROM customers
SELECT * FROM orders

-- INNER JOIN
/* Get all customers along with their orders, 
   but only for customers who have placed an order */

 SELECT
	c.first_name,
	o.customer_id,
	o.order_id
FROM customers AS c
INNER JOIN orders AS o
ON c.id  = o.customer_id



   -- LEFT JOIN
/* Get all customers along with their orders, 
   including those without orders */

 SELECT
	c.first_name,
	o.sales,
	o.customer_id,
	o.order_id
FROM customers AS c
LEFT JOIN orders AS o
ON c.id  = o.customer_id


   -- RIGHT JOIN
/* Get all customers along with their orders, 
   including orders without matching customers */

    SELECT
	c.first_name,
	o.sales,
	o.customer_id,
	o.order_id
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id  = o.customer_id

-- Alternative to RIGHT JOIN using LEFT JOIN
/* Get all customers along with their orders, 
   including orders without matching customers */


    SELECT
	c.first_name,
	o.sales,
	o.customer_id,
	o.order_id
FROM orders AS o
LEFT JOIN customers AS c
ON c.id  = o.customer_id

-- FULL JOIN
/* Get all customers and all orders, even if there’s no match */

 SELECT
	c.first_name,
	o.sales,
	o.customer_id,
	o.order_id
FROM customers AS c
FULL JOIN orders AS o
ON c.id  = o.customer_id