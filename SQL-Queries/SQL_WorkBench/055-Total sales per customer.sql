--Total sales per customer.

SELECT 
	customer_id,
	SUM(sales) AS total_sales_per_customer
FROM orders
GROUP BY customer_id