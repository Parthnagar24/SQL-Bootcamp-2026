--11.retrieve only 3 customers

SELECT TOP 3 *
FROM customers

--12.retrieve only 3 customers with highest score

SELECT TOP 3 *
FROM customers
ORDER BY score DESC
