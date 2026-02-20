SELECT
customerID,
Score,
CASE 
	WHEN Score>=90 THEN 'A'
	WHEN Score>=75 AND Score<90 THEN 'B'
	WHEN Score> =50 AND Score<75 THEN 'C'
	ELSE 'F'
END AS RESULT
FROM Sales.Customers

SELECT * FROM SALES.ORDERS
