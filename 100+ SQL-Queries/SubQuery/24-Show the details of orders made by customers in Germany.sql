/* TASK 11:
   Show the details of orders made by customers in Germany.
*/


SELECT
    *
FROM Sales.Orders AS o

WHERE EXISTS (
SELECT 1
    FROM Sales.Customers AS c
    WHERE Country = 'Germany'
     AND o.CustomerID = c.CustomerID
);