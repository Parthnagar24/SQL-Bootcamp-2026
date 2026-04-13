--1. BASIC AGGREGATION (OVER)

SELECT
OrderID,
Sales,
SUM(Sales) OVER() AS total_sales
FROM Sales.Orders;

SELECT
ProductID,
Sales,
SUM(Sales) OVER(PARTITION BY ProductID) AS product_total
FROM Sales.Orders;


-- Show:
-- CustomerID
-- Sales
-- Total sales per customer (use window)

SELECT
CustomerID,
Sales,
SUM(Sales) OVER(PARTITION BY CustomerID) AS total_sales
FROM Sales.Orders

--2. ORDER + RUNNING TOTAL

SELECT
OrderID,
Sales,
SUM(Sales) OVER(ORDER BY OrderID) AS running_total
FROM Sales.Orders;

-- Show running total of sales ordered by OrderDate

SELECT
OrderID,
Sales,
OrderDate,
SUM(Sales) OVER(ORDER BY OrderDate) AS running_total
FROM Sales.Orders;

--3. PARTITION + ORDER

SELECT
ProductID,
OrderID,
Sales,
SUM(Sales) OVER(
    PARTITION BY ProductID
    ORDER BY OrderID
) AS running_total_per_product
FROM Sales.Orders;

-- Running total of sales per customer ordered by date

SELECT
ProductID,
OrderID,
Sales,
OrderDate,
SUM(Sales) OVER(
    PARTITION BY ProductID
    ORDER BY OrderDate
) AS running_total_per_product
FROM Sales.Orders;


--4. RANKING FUNCTIONS

--ROW_NUMBER()


SELECT
OrderID,
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) AS rn
FROM Sales.Orders;

--RANK()

SELECT
OrderID,
Sales,
RANK() OVER(ORDER BY Sales DESC) FROM Sales.Orders;

--DENSE_RANK()

SELECT
OrderID,
Sales,
DENSE_RANK() OVER(ORDER BY Sales DESC)
FROM Sales.Orders;

-- Rank customers based on total sales (highest first)
-- Use RANK()

SELECT
CustomerID,
SUM(Sales) AS total_sales,
RANK() OVER(ORDER BY SUM(Sales) DESC) AS customer_rank
FROM Sales.Orders
GROUP BY CustomerID;

--5. PARTITION + RANK

SELECT
ProductID,
Sales,
RANK() OVER(
    PARTITION BY ProductID
    ORDER BY Sales DESC
) AS rank_in_product
FROM Sales.Orders;

--6. VALUE FUNCTIONS (LEAD / LAG)

SELECT
OrderID,
Sales,
LAG(Sales) OVER(ORDER BY OrderID) AS prev_sales
FROM Sales.Orders;

SELECT
OrderID,
Sales,
LEAD(Sales) OVER(ORDER BY OrderID) AS next_sales
FROM Sales.Orders;

--7. FIRST_VALUE / LAST_VALUE

SELECT
OrderID,
Sales,
FIRST_VALUE(Sales) OVER(ORDER BY Sales) AS smallest_sale
FROM Sales.Orders;

SELECT
OrderID,
Sales,
LAST_VALUE(Sales) OVER(
    ORDER BY Sales
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
)
FROM Sales.Orders;