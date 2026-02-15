--008.Show total sales amount from dbo.orders.

SELECT * FROM orders

SELECT
SUM(sales) AS Total_sales_amount
FROM orders