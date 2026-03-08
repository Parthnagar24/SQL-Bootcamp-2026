--Average sales per customer.

SELECT 
	customer_id,
	AVG(sales) AS avg_Sales_per_customer
FROM orders
GROUP BY customer_id