-- Data Aggregation Functions - COUNT() MAX() MIN() SUM() AVG()

-- Table : Customers  -> using score

SELECT * FROM customers

--data aggregation
SELECT 
	COUNT(*) AS Total_number_of_scores,
	MAX(score) AS Highest_score,
	MIN(score) AS Lowest_score,
	SUM(score) AS Total_value_of_Score,
	AVG(score) AS Average_value_of_score
FROM customers


--data aggregation with GROUP BY
SELECT 
	country,
	COUNT(*) AS Total_number_of_scores,
	MAX(score) AS Highest_score,
	MIN(score) AS Lowest_score,
	SUM(score) AS Total_value_of_Score,
	AVG(score) AS Average_value_of_score
FROM customers
GROUP BY country

