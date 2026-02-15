--038.Show orders that have no matching customer.

SELECT
c.first_name,
o.order_id
FROM orders AS o 
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL