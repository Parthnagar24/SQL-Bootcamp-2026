-- =========================================
-- NESTED CTE: CUSTOMER SALES ANALYSIS
-- =========================================

-- 1. Calculate total sales per customer
WITH CTE_TOTAL_SALES AS 
(
    SELECT 
        CustomerID,
        SUM(Sales) AS Total_sales
    FROM Sales.Orders
    GROUP BY CustomerID
),

-- 2. Find the last order date per customer
CTE_LAST_ORDER AS
(
    SELECT
        CustomerID,
        MAX(OrderDate) AS LASTORDER
    FROM Sales.Orders
    GROUP BY CustomerID
),

-- 3. Rank customers based on total sales (highest first)
CTE_CUST_RANK AS
(
    SELECT 
        CustomerID,
        Total_sales,
        RANK() OVER(ORDER BY Total_sales DESC) AS Cust_Rank
    FROM CTE_TOTAL_SALES
),

-- 4. Segment customers based on total sales
CTE_CUSTOMER_SEGMENT AS
(
    SELECT
        CustomerID,
        CASE 
            WHEN Total_sales > 100 THEN 'HIGH'     -- High-value customers
            WHEN Total_sales > 50 THEN 'MEDIUM'    -- Mid-value customers
            ELSE 'LOW'                             -- Low-value customers
        END AS CUSTOMERSEGMENT
    FROM CTE_TOTAL_SALES
)

-- =========================================
-- FINAL RESULT: COMBINE ALL INSIGHTS
-- =========================================
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    
    -- Total spending by customer
    cts.Total_sales,
    
    -- Most recent order date
    clo.LASTORDER,
    
    -- Ranking based on spending
    cr.Cust_Rank,
    
    -- Customer segment (High / Medium / Low)
    cg.CUSTOMERSEGMENT

FROM Sales.Customers AS c

-- Join total sales data
LEFT JOIN CTE_TOTAL_SALES cts
    ON cts.CustomerID = c.CustomerID

-- Join last order date
LEFT JOIN CTE_LAST_ORDER clo
    ON clo.CustomerID = c.CustomerID

-- Join ranking
LEFT JOIN CTE_CUST_RANK cr
    ON cr.CustomerID = c.CustomerID

-- Join customer segmentation
LEFT JOIN CTE_CUSTOMER_SEGMENT cg
    ON cg.CustomerID = c.CustomerID;