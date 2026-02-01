/* Create a new table called persons 
   with columns: id, person_name, birth_date, and phone */

CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(20) NOT NULL,
	birth_date DATE,
	phone VARCHAR(20) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)