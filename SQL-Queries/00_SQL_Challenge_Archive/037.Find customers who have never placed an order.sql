--037.Find customers who have never placed an order.

SELECT * from CUSTOMERS
SELECT * FROM orders


SELECT
c.first_name,
o.order_id
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL