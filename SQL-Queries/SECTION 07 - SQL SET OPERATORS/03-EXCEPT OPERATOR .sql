--EXCEPT : RETURN ALL DISTINCT ROWS FROM 1ST QUERY THAT ARE NOT FOUND IN 2ND QUERY 

-- FIND EMPLOYEES WHO ARE NOT CUSTOMERS AT THE SAME TIME

SELECT 
	FirstName,
	LastName
FROM Sales.Employees

EXCEPT

SELECT
	FirstName,
	LastName
FROM Sales.Customers

--

SELECT 
	FirstName,
	LastName
FROM Sales.Customers

EXCEPT

SELECT
	FirstName,
	LastName
FROM Sales.Employees