--INSERTION OF DATA FROM SOURCE TABLE(EXISTING TABLE) TO A TARGET TABLE
-- MOVING DATA FROM ONE TABLE TO ANOTHER

--1. COPY DATA FROM 'CUSTOMERS' TABLE INTO 'PERSON'

INSERT INTO person (id,person_name,birth_date,phone)
SELECT 
	id,
	first_name AS person_name,
	NULL AS birth_date,
	'Unknown' AS phone
FROM customers

SELECT * FROM person




ALTER TABLE person ADD phone VARCHAR(20) NOT NULL
ALTER TABLE person DROP COLUMN email

