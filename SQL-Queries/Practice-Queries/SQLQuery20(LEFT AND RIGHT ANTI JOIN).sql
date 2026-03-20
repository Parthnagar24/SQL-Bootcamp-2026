-- LEFT ANTI JOINS

--returns rows from left table that has no match in right


--get all customers who havent placed any orders

SELECT 
	*
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL


-- RIGHT ANTI JOIN

--returns rows from right table has no match in left


--get all orders without matching customers

SELECT 
	*
FROM orders 
LEFT JOIN customers
ON customers.id = orders.customer_id
WHERE customers.id IS NULL




SELECT 
	*
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
WHERE customers.id IS NULL