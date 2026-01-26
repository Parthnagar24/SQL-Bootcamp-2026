--DATEADD()

SELECT
CreationTime,
DATEADD(month,5,CreationTime),
DATEADD(month,5,'2025-11-20'),
DATEADD(year,5,'2025-11-20'),
DATEADD(day,-5,'2025-11-20')
FROM Sales.Orders


--DATEDIFF()

SELECT
OrderDate,
ShipDate,
DATEDIFF(year, OrderDate,ShipDate),
DATEDIFF(year, '2024-07-12','2025-02-19'),
DATEDIFF(month, '2024-07-12','2025-02-19'),
DATEDIFF(day, '2024-07-12','2025-02-19')
FROM Sales.Orders

--calculate age of employees

SELECT
EmployeeID,
BirthDate,
DATEDIFF(year,BirthDate, GETDATE())
FROM Sales.Employees