/* TASK 10:
   Show all customer details and the total orders for each customer using a correlated subquery.
*/

SELECT
    *,
    (SELECT COUNT(*)
     FROM Sales.Orders o
     WHERE o.CustomerID = c.CustomerID) AS TotalSales
FROM Sales.Customers AS c;
