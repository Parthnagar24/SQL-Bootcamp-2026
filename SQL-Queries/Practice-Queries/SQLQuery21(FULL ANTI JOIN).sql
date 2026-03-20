-- FULL ANTI JOIN 

--returns only rows that dont match in either tables


--find customers without order and orders without customers

SELECT 
	*
FROM customers
FULL JOIN orders
ON customers.id = orders.customer_id
WHERE 
	orders.customer_id IS NULL OR customers.id IS NULL