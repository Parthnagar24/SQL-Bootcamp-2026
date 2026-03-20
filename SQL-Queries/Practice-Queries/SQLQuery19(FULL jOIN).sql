-- FULL JOIN      returns all rows from both tables

--get all customers and all orders even if theres no match

SELECT 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM customers
FULL JOIN orders
ON customers.id = orders.customer_id



SELECT 
	*
FROM customers
FULL JOIN orders
ON customers.id = orders.customer_id