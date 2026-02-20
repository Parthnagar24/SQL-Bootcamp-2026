/* TASK 4: 
   Find the sales price for each order by dividing sales by quantity.
   Uses NULLIF to avoid division by zero.*/

   SELECT 
	   OrderID,
	   Sales,
	   Quantity,
	   Sales/ NULLIF(Quantity,0) AS Sales_price
   FROM Sales.orders