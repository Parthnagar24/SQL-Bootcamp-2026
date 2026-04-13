-- Retrieve the last two characters of each first name
SELECT 
    first_name,
    RIGHT(first_name, 2) AS last_2_chars
FROM customers