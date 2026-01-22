-- DATA DEFINITION LANGUAGE (DDL)

/*1. Create a new table called persons 
   with columns: id, person_name, birth_date, and phone */

CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(14) NOT NULL,
	birth_date DATE,
	phone VARCHAR(12) NOT NULL
	CONSTRAINT pk_persons PRIMARY KEY (id)
)

--2. Add a new column called email to the persons table

ALTER TABLE persons ADD email VARCHAR(20) NOT NULL

-- 3.Remove the column phone from the persons table

ALTER TABLE persons DROP COLUMN phone 


--4. Delete the table persons from the database

DROP TABLE persons