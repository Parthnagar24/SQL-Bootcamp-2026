-- Step 1: Join customers and orders
-- Step 2: Group by country
-- Step 3: Calculate total sales
-- Step 4: Categorize using CASE

SELECT 
    c.Country,
    
    SUM(o.Sales) AS TotalSales,
    
    CASE 
        WHEN SUM(o.Sales) > 500 THEN 'Premium Country'
        ELSE 'Regular Country'
    END AS CountryType

FROM Sales.Customers AS c
INNER JOIN Sales.Orders AS o
    ON c.CustomerID = o.CustomerID

GROUP BY c.Country;