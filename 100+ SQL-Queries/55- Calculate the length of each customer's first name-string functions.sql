-- Calculate the length of each customer's first name

SELECT
TRIM(first_name),
LEN(first_name),
LEN(TRIM(first_name))
FROM customers