-- CAST() : CONVERTS A VALUE TO DIFF DATA TYPE

--CAST (value AS data_type)

SELECT
CreationTime,
CAST('123' AS INT),
CAST(CreationTime AS DATE),
CAST('2025-09-20' AS DATETIME)
FROM Sales.Orders