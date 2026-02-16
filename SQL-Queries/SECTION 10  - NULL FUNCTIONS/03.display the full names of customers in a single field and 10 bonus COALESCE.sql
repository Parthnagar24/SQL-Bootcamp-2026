/*
display the full names of customers in a single field
by merging their first and last names
and add 10 bonus points to each customers score
*/

SELECT
	CustomerID,
	FirstName,
	LastName,
	Score,
	CONCAT(FirstName,' ',LastName) AS full_name,
	COALESCE(Score,0),
	COALESCE(Score,0) + 10 AS SCORE_BONUS
FROM Sales.Customers