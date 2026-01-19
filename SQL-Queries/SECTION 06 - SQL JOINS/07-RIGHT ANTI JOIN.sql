-- RIGHT ANTI JOIN : return rows from RIGHT that has no match in LEFT

SELECT * FROM customers
SELECT * FROM orders

--GET ALL ORDERS WITHOUT MATCHING CUSTOMERS
SELECT 
	*
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL



SELECT 
	*
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL