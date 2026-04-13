


SELECT 
OrderDate,
    EOMONTH(OrderDate) AS month_end
FROM Sales.Orders