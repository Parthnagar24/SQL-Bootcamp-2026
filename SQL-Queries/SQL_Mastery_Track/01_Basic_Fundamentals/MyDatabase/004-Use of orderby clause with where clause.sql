--sort score from asc to desc order and then retrieve customers with score less than 300

SELECT 
*
FROM customers
WHERE score < 300
ORDER BY score 