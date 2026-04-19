--Show all users (Users)

SELECT
	user_id,
	name
FROM Sales.Users

--Get top 2 oldest users (Users)

SELECT TOP 2 *
FROM Sales.Users
ORDER BY age ASC       

--Get distinct countries (Users)

SELECT DISTINCT
	country
FROM Sales.Users

--Count total users (Users)

SELECT
COUNT(user_id) AS Total_Users
FROM Sales.Users

--Average age (Users)

SELECT 
AVG(age) AS average_age
FROM Sales.Users

--Users from USA (Users)

SELECT
	user_id,
	name,
	country
FROM Sales.Users
WHERE country IN ('USA')

--Users where age is NULL (Users)

SELECT
	user_id,
	name,
	country,
	age
FROM Sales.Users
WHERE age IS NULL


--Users whose name starts with ‘A’ (Users)

SELECT *
FROM Sales.Users
WHERE name LIKE 'A%'
