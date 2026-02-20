SELECT 
customerID,
Score,
CASE 
		WHEN Score >= 50 THEN 'Pass'
		ELSE 'Fail'
	END AS Result
FROM Sales.Customers