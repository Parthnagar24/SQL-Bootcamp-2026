SELECT * FROM customers

SELECT 
country,
--check total number of score
COUNT(*) AS Total_number_of_score,     -- Checks all rows and returns a single value

--find total score 
SUM(score) As Sum_of_score, -- generates the total sum of score

--find average sales 
AVG(score) As Average_of_score, -- generates the total sum of score

--find the highest score
MAX(score) AS Highest_score_In_orders,  -- returns largest value

--find the lowest score
MIN(score) AS Lowest_score_In_orders  -- returns smallest value

FROM customers
GROUP BY country

