--sort the country based on highest to lowest score  and vice versa

SELECT
	country,
	score
FROM customers
ORDER BY score DESC

--lowest to highest
SELECT
	country,
	score
FROM customers
ORDER BY score    --by default it is ascending

--sort orders based on recent place orders first

SELECT *
FROM orders
ORDER BY order_date DESC