--Find orders where sales less than 20

SELECT
	order_id,
	sales
FROM orders
WHERE sales < 20