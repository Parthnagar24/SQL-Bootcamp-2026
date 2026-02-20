SELECT 
orderID,
Sales,
CASE 
		WHEN Sales >= 100 THEN 'Big'
		ELSE 'Small'
	END AS Category
FROM Sales.Orders