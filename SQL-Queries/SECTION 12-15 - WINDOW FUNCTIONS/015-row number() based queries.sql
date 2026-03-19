--find the highest sales for each product


SELECT *
FROM (
SELECT 
OrderID,
ProductID,
Sales,
ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) AS highest_sales_for_each_order_row
FROM Sales.Orders
)t WHERE 
highest_sales_for_each_order_row =1

--find thelowest 2 customer based on their total sales 

SELECT *
FROM (
    SELECT 
        CustomerID, 
        SUM(Sales) AS TotalSales,
        ROW_NUMBER() OVER (ORDER BY SUM(Sales) ASC) AS RankCustomer
    FROM Sales.Orders
    GROUP BY CustomerID
) t
WHERE RankCustomer <= 2;


--
SELECT TOP 2
CustomerID,
SUM(Sales)
FROM Sales.Orders
GROUP BY CustomerID
ORDER BY SUM(Sales) ASC



