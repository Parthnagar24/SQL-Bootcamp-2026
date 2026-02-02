-- Nesting
SELECT
first_name, 
UPPER(LOWER(first_name)) AS nesting
FROM customers