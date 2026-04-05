--Data Query Language (DQL - SELECT Query)

/* Generally we ask a question and in return database gives answer 
the form of result */

--01.retrieve all data from customers table

SELECT *
FROM customers  

/* 02.retrieve specific data from customers table
most suitable approach as it gives a clean result */

SELECT
	first_name,
	score
FROM customers     --retrieves customers name with their score


/* 03.retrieve customer data exclude country with score less than 500
Here we will use WHERE clause to filter data before aggregation
and based on a condition */

SELECT *
FROM customers
WHERE score >500

--better approach
SELECT 
	first_name,
	country,
	score
FROM customers
WHERE score >500

/* 04. Sorting data based on lowest or highest value
using the ORDER By clause */

SELECT *
FROM customers
ORDER BY score   --by default ascending


SELECT *
FROM customers
ORDER BY score ASC


SELECT *
FROM customers
ORDER BY score DESC

/* 05.combining rows with same value
aggregation of 1 column by another column 
using GROUP BY clause */


SELECT 
country,
COUNT(*) AS Total_customers_per_country,
SUM(score) AS Total_score_per_country
FROM customers
GROUP BY country
--similarly we can perform AVG,MIN,MAX etc

--06. Using HAVING CLAUSE to filter data after aggregation

SELECT 
country,
COUNT(*) AS Total_customers_per_country,
SUM(score) AS Total_score_per_country
FROM customers
GROUP BY country
HAVING SUM(score) >800

/*
where clause should be used before aggregating a data
having clause should be used with group by clause
and must be used after aggregating data
*/

/* 07.Using DISTINCT clause to remove duplicate data
it only works if we mention a particular column
does not work if we use SELECT * */

SELECT DISTINCT 
	country
FROM customers  

--08.using TOP clause to retrict number of rows returned

SELECT TOP 3 *
FROM customers

