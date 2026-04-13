-- Q1: Show all customers and their total sales
-- (Even if they have no orders)

SELECT 
	c.id,
	SUM(o.sales) AS total_sales_per_customer
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
GROUP BY c.id


-- Q2: Show customers who never placed any order

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

-- Q3: Show orders where customer does NOT exist

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

 --Q4: Count number of orders per customer
-- Show only those with more than 2 orders

SELECT 
	c.id,
	COUNT(o.order_id) AS total_orders_per_customer
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
GROUP BY c.id
HAVING COUNT(o.order_id) >2


-- Tables:
--customers(id, name)
--orders(order_id, customer_id)
--payments(payment_id, order_id, amount)
-- Q1: Show customer name, total orders, total payment amount
-- Q2: Show customers who placed orders but never made payment
-- Q3: Show customers who made payment without valid order

SELECT
	c.name,
	COUNT(o.order_id) AS total_orders,
	COALESCE(SUM(p.amount), 0) AS total_payment
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
LEFT JOIN payments AS p
ON p.order_id = o.order_id
GROUP BY c.name;

SELECT DISTINCT c.name
FROM customers AS c
JOIN orders AS o
ON c.id = o.customer_id
LEFT JOIN payments AS p
ON p.order_id = o.order_id
WHERE p.payment_id IS NULL;


SELECT *
FROM payments AS p
LEFT JOIN orders AS o
ON p.order_id = o.order_id
WHERE o.order_id IS NULL;