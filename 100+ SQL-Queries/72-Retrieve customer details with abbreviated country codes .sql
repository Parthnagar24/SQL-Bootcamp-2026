/* TASK 2: 
   Retrieve customer details with abbreviated country codes 
*/

SELECT
country,
CASE country
	WHEN 'Germany' THEN 'Ger'
	WHEN 'UK' THEN 'uk'
	WHEN 'USA' THEN 'us'
	ELSE 'N\A'
END
FROM Sales.Customers