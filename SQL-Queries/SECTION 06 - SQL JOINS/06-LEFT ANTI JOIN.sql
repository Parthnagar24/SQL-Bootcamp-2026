-- LEFT ANTI JOIN : return rows from left that has no match in right

SELECT * FROM customers
SELECT * FROM orders

--GET ALL CUSTOMERS WHO HAVE NOT ORDERED
SELECT 
	*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL