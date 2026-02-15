--004.Show all orders placed in 2021.

SELECT *
FROM orders
WHERE YEAR(order_date) = '2021'