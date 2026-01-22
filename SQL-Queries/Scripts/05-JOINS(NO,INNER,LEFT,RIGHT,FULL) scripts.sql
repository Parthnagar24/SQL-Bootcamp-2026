-- No Join
/* Retrieve all data from customers and orders as separate results */

SELECT * FROM customers;
SELECT * FROM orders;

-- INNER JOIN
/* Get all customers along with their orders, 
   but only for customers who have placed an order */

SELECT 
	c.id,
	c.first_name,
	o.customer_id,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

-- LEFT JOIN
/* Get all customers along with their orders, 
   including those without orders */

SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

-- RIGHT JOIN
/* Get all customers along with their orders, 
   including orders without matching customers */
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c 
RIGHT JOIN orders AS o 
ON c.id = o.customer_id

-- Alternative to RIGHT JOIN using LEFT JOIN
/* Get all customers along with their orders, 
   including orders without matching customers */
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o 
LEFT JOIN customers AS c
ON c.id = o.customer_id


-- FULL JOIN
/* Get all customers and all orders, even if there’s no match */

SELECT *
FROM customers
FULL JOIN orders
ON customers.id=orders.customer_id

SELECT *
FROM orders
FULL JOIN customers
ON customers.id=orders.customer_id


