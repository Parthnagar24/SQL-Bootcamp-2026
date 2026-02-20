/*If customer city is:

'Delhi' → 'North'

'Mumbai' → 'West'

Else → 'Other'*/

SELECT 
Country,
CASE Country
	WHEN 'Germany' THEN 'eu'
	WHEN 'USA' THEN 'america'
	ELSE 'n/a'
END AS Country
FROM Sales.Customers