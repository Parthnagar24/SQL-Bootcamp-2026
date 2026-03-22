/* TASK 1: 
   Calculate the Total Sales Across All Orders 
*/

SELECT
	SUM(Sales) OVER() AS total_sales_across_all_orders 
	--this over tells us that window func is being used
	--so far no partition no order by no frame, so it considers entire as a 1 window 
	--so all orders are displaying same value of total sales
FROM orders

/* TASK 2: 
   Calculate the Total Sales for Each Product 
*/

SELECT 
ProductID,
Sales,
SUM(Sales) OVER(PARTITION BY ProductID) AS total_sales_per_product
--we had pid 101,102,103,104 this partition divides the entire window into 4 respected sub windows
--based on the pid and displays sales on each pid 
FROM Sales.Orders

/* TASK 3: 
   Find the total sales across all orders,
   additionally providing details such as OrderID and OrderDate 
*/

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER() AS total_sales
FROM Sales.Orders

/* TASK 4: 
   Find the total sales across all orders and for each product,
   additionally providing details such as OrderID and OrderDate 
*/

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS total_sales_per_product
FROM Sales.Orders

/* TASK 5: 
   Find the total sales across all orders, for each product,
   and for each combination of product and order status,
   additionally providing details such as OrderID and OrderDate 
*/

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER() AS total_sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS total_sales_per_product,
	SUM(Sales) OVER(PARTITION BY ProductID,OrderStatus) AS total_sales_per_product
FROM Sales.Orders




/* TASK 6: 
   Rank each order by Sales from highest to lowest */

   SELECT
   OrderID,
   ProductID,
   Sales,
   RANK() OVER(ORDER BY Sales DESC) -- gives same number to values with same value
   --for example rank 1 2 2 then it would be 3 next should come is 4 in ranking 
   FROM Sales.Orders


