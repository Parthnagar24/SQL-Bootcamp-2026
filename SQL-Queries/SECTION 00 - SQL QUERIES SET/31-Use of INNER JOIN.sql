-- INNER JOIN
/* Get all customers along with their orders, 
   but only for customers who have placed an order */

SELECT *
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

SELECT * FROM customers 
SELECT * FROM orders