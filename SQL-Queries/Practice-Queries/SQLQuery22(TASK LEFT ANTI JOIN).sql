-- get all customers along with their order,but only for customers who have placed an order 

SELECT 
*
FROM customers
FULL JOIN orders
ON customers.id = orders.customer_id

WHERE orders.customer_id IS NOT NULL

SELECT 
*
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id

WHERE orders.customer_id IS NOT NULL