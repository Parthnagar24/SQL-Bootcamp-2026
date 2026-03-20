-- copy data from customers to persons

INSERT INTO persons(id,person_name,birth_date,email)

SELECT 
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers

SELECT * FROM persons


