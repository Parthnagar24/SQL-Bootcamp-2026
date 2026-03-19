-- ASSIGN UNIQUE IDS TO THE ROWS OF THE 'OrrdersArchieve'

SELECT
ROW_NUMBER() OVER(ORDER BY OrderID,OrderDate) AS UniqueID,
*
FROM Sales.OrdersArchive