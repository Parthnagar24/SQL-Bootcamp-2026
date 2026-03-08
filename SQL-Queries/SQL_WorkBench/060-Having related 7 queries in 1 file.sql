--Countries having average score > 500.

SELECT 
	country,
	AVG(score) AS avg_score_per_country
FROM customers
GROUP BY country
HAVING AVG(score) >500

--Countries having more than 1 customer.

SELECT 
	country,
	COUNT(*) AS customer_per_country
FROM customers
GROUP BY country
HAVING COUNT(*) > 1

--Customers whose total sales > 30.

SELECT 
	customer_id,
	SUM(sales) AS customer_sales_per_country
FROM orders
GROUP BY customer_id
HAVING SUM(sales) > 30

--Customers having more than 1 order.

SELECT 
	customer_id,
	COUNT(order_id) AS customer_per_order
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1

--Countries with max score > 800.

SELECT 
	country,
	MAX(score) AS max_score_per_country
FROM customers
GROUP BY country
HAVING MAX(score) > 800


--Customers with avg sales > 15

SELECT 
	customer_id,
	AVG(sales) AS avg_sales_per_customer
FROM orders
GROUP BY customer_id
HAVING AVG(sales) >15

--Order dates having total sales > 20.

SELECT
	order_date,
	SUM(sales)
FROM orders
GROUP BY order_date
HAVING SUM(sales) >20