--051.Find orders placed in first half of 2021.

SELECT * FROM orders
WHERE order_date BETWEEN '2021-01-01' AND  '2021-06-01'