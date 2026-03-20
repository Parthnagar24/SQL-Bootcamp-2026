-- INNER JOIN -- returns matching rows from both tables

--get all customers along with their orders,but only for customers who have placed an order

SELECT 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id