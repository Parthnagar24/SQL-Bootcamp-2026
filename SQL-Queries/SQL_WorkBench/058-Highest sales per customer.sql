--Highest sales per customer.

SELECT 
	customer_id,
	MAX(sales) AS highest_Sales_per_customer
FROM orders
GROUP BY customer_id