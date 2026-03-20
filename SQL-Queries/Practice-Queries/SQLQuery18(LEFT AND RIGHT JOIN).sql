--LEFT JOIN -- returns all rows from left table and only only matching from right


--get all customers along with their orders,including those without orders

SELECT 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id


-- RIGHT JOIN  returns all rows from right table and  only matching from left

----get all customers along with their orders,including  orders without matching customers

SELECT 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id


--- TASK

SELECT 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM orders
LEFT JOIN customers
ON customers.id = orders.customer_id
