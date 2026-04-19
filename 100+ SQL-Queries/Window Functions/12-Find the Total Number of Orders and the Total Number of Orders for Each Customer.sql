/* TASK 1:
   Find the Total Number of Orders and the Total Number of Orders for Each Customer
*/


SELECT
CustomerID,
OrderID,
COUNT(*) OVER() AS total_no_of_customers_Across,
COUNT(*) OVER(PARTITION BY CustomerID) AS total_no_of_customers_for_id
FROM Sales.Orders