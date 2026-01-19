-- FULL ANTI JOIN : return only rows that dont match in either table

SELECT * FROM customers
SELECT * FROM orders

--FIND CUSTOMERS WITHOUT ORDERS AND ORDERS WITHOUT CUSTOMERS
SELECT 
	*
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE 
o.customer_id IS NULL OR c.id IS NULL

 