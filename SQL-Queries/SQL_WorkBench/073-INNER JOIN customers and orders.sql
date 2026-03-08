--INNER JOIN customers and orders.

SELECT *
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

SELECT * FROM customers
SELECT * FROM orders