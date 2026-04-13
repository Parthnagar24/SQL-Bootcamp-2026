/* TASK 1:
   Display OrderID, CreationTime, a hard-coded date, and the current system date.
*/

SELECT 
OrderID,
CreationTime,
'2026-01-01' AS Hard_coded,
GETDATE() -- to get current systems date and time
FROM Sales.Orders