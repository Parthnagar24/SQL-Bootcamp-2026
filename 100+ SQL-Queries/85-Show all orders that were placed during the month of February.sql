/* TASK 8:
   Show all orders that were placed during the month of February.
*/


SELECT
    *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;