--SUBQUERY RESULT TYPE

--1.SCALAR SUBQUERY

SELECT 
AVG(Sales)
FROM Sales.Orders         -- only 1 col and 1 row

--2.ROW SUBQUERY

SELECT 
CustomerID
FROM Sales.Orders     --multiple rows and single col

--3.TABLE SUBQUERY

SELECT 
*  
FROM Sales.Orders    --multiple rows and Multiple col