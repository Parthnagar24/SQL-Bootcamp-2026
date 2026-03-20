--Show all orders placed in 2021.

SELECT 
*
FROM orders


--Show orders where sales amount is greater than 30.

SELECT *
FROM orders
WHERE sales>30

--Show the highest sales amount.

SELECT 
sales
FROM orders
ORDER BY sales DESC

--Show the lowest sales amount
SELECT 
sales
FROM orders
ORDER BY sales 

--Show the average sales amount.

SELECT 
AVG(sales) AS average_sales
FROM orders

--Show all orders sorted by date (latest first).

SELECT
order_date
FROM orders
ORDER BY order_date DESC