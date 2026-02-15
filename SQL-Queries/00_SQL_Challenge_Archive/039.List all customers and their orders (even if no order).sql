--039.List all customers and their orders (even if no order).

SELECT *
FROM customers
FULL JOIN orders
ON customers.id = orders.customer_id