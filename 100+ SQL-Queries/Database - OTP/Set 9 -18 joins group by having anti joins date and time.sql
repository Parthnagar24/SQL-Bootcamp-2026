--Total users per country (Users)

SELECT 
	country,
	COUNT(user_id) AS Total_users_per_country
FROM Sales.Users
GROUP BY country

--Countries with more than 1 user (Users)

SELECT 
	country,
	COUNT(user_id) AS Total_users_per_country
FROM Sales.Users
GROUP BY country
HAVING COUNT(user_id) >1

--Active subscriptions (Subscriptions)

SELECT * 
FROM Sales.Subscriptions
WHERE status = 'Active'


--Users with active subscriptions (JOIN)
SELECT 
    u.user_id,
    u.name,
    s.status
FROM Sales.Users AS u
INNER JOIN Sales.Subscriptions AS s 
    ON u.user_id = s.user_id
WHERE s.status = 'Active';

--Users without subscription (ANTI LEFT)

SELECT 
    u.user_id,
    u.name,
    s.status
FROM Sales.Users AS u
LEFT JOIN Sales.Subscriptions AS s 
    ON u.user_id = s.user_id
WHERE s.user_id IS NULL ;

--Subscriptions without users (ANTI RIGHT)

SELECT 
    u.user_id,
    u.name,
    s.status
FROM Sales.Users AS u
RIGHT JOIN Sales.Subscriptions AS s 
    ON u.user_id = s.user_id
WHERE u.user_id IS NULL ;

--Total revenue from payments (Payments)

SELECT
SUM(amount) AS Total_revenue
FROM Sales.Payments

--Revenue per user (Payments)


SELECT
user_id,
SUM(amount) AS Total_revenue
FROM Sales.Payments
GROUP BY user_id

--Users who paid more than 400 (Payments)

SELECT
user_id,
SUM(amount) AS Total_revenue
FROM Sales.Payments
GROUP BY user_id
HAVING SUM(amount) >400

--Payments in March 2024 (DATE filter)

SELECT *
FROM Sales.Payments
WHERE MONTH(payment_date) = 3
AND YEAR(payment_date) =2024