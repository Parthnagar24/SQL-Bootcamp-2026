--Step 1: FIND THE TOTAL SALES PER CUSTOMER
WITH CTE_sales AS (
    SELECT
        CustomerID,
        SUM(Sales) AS Total_Sales_per_Customers
    FROM Sales.Orders
    GROUP BY CustomerID
),

--Step 2: FIND THE LAST ORDER DATE PER CUSTOMER
CTE_date AS (
    SELECT
        CustomerID,
        MAX(OrderDate) AS last_order
    FROM Sales.Orders
    GROUP BY CustomerID
),

--Step 3: RANK CUSTOMERS BASED ON TOTAL SALES
CTE_Rank AS (
    SELECT
        CustomerID,
        RANK() OVER (ORDER BY Total_Sales_per_Customers DESC) AS rank_Sales
    FROM CTE_sales
),

--Step 4: SEGMENT CUSTOMERS BASED ON THEIR TOTAL SALES
CTE_segment AS (
    SELECT
        CustomerID,
        CASE 
            WHEN Total_Sales_per_Customers > 100 THEN 'Group 1'
            WHEN Total_Sales_per_Customers > 50 THEN 'Group 2'
            ELSE 'Group 3'
        END AS CUSTOMERSEGMENT
    FROM CTE_sales
)

--MAIN QUERY
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.Total_Sales_per_Customers,
    ctd.last_order,
    ctr.rank_Sales,
    ctg.CUSTOMERSEGMENT 
FROM Sales.Customers AS c
LEFT JOIN CTE_sales AS cts 
    ON c.CustomerID = cts.CustomerID
LEFT JOIN CTE_date AS ctd
    ON c.CustomerID = ctd.CustomerID
LEFT JOIN CTE_Rank AS ctr
    ON c.CustomerID = ctr.CustomerID
LEFT JOIN CTE_segment AS ctg
    ON c.CustomerID = ctg.CustomerID;