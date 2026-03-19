--TOP BOTTOM N ANALYSIS
--INTERGER BASED RANKING

-- 1.ROW_NUMBER()  2.RANK()  3.DENSE_RANK()  4.NTILE()

SELECT 
	OrderID,
	ProductID,
	Sales,
	ROW_NUMBER() OVER(ORDER BY Sales DESC) AS Unique_salesrank_row,  --no handle ties, unique rank, no gaps
	RANK() OVER(ORDER BY Sales DESC) AS salesrank_rank,        -- handle ties and leaves gap, shared rank
	DENSE_RANK() OVER(ORDER BY Sales DESC) salesrank_denserank  --no gaps,handles ties , shared rank
FROM Sales.Orders

