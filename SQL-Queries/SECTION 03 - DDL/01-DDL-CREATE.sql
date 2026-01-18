-- DATA DEFINITION LANGUAGE DDL

/* create a new table called person
with column : id,person_name, birth_date,phone */

CREATE TABLE person (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_person PRIMARY KEY (id)
)

SELECT *
FROM person