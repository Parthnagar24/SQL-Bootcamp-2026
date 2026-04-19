--show the product id,product names,prices,total number of orders

SELECT
	ProductID,
	Product,
	Price,
	--subquery
	(SELECT COUNT(*) AS total_orders FROM Sales.Orders)t
FROM Sales.Products;

