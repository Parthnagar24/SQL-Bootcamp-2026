--MAPPING

--retrieve employees details where gender display as full text

SELECT 
	EmployeeID,
	Gender,
	FirstName,
	LastName,
CASE 
	WHEN Gender='M' THEN 'Male'
	WHEN Gender='F' THEN 'Female'
	ELSE NULL
END AS FULL_GENDER
FROM Sales.Employees


--retrieve customer country code with abbreviated country code
SELECT 
	CustomerId,
	FirstName,
	LastName,
	Country,
CASE 
	WHEN Country ='Germany' THEN 'GER'
	WHEN Country='USA' THEN 'US'
	ELSE ''
END AS country_abre
FROM Sales.Customers

SELECT DISTINCT Country FROM Sales.Customers


--alternate

SELECT 
	CustomerId,
	FirstName,
	LastName,
	Country,
CASE Country
	WHEN 'Germany' THEN 'GER'
	WHEN 'USA' THEN 'US'
	ELSE ''
END AS country_abre
FROM Sales.Customers