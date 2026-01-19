-- get all customers along with their orders,but only for customers who have placed an order


SELECT * FROM customers
SELECT * FROM orders



SELECT 
	*
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL AND o.customer_id IS NOT NULL