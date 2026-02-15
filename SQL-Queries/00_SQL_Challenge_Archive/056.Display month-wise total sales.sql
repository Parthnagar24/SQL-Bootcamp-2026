--056.Display month-wise total sales.

SELECT 
    MONTH(order_date) AS OrderMonth,
    SUM(sales) AS TotalSales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY OrderMonth;