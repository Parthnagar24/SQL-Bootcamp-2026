--053.Count orders per year.

SELECT 
YEAR(order_date),
COUNT(order_id)
FROM orders

GROUP BY YEAR(order_date)