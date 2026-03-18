SELECT * FROM orders

SELECT 
customer_id,
--check total number of sales
COUNT(*) AS Total_number_of_sales,     -- Checks all rows and returns a single value

--find total sales 
SUM(Sales) As Sum_of_Sales, -- generates the total sum of sales

--find average sales 
AVG(Sales) As Average_of_Sales, -- generates the total sum of sales

--find the highest sales
MAX(Sales) AS Highest_Sales_In_orders,  -- returns largest value

--find the lowest sales
MIN(Sales) AS Lowest_Sales_In_orders  -- returns smallest value

FROM orders
GROUP BY customer_id
