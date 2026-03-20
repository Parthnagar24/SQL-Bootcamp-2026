/* Task 1 :create a new table called persons
with columns : id,person_name , bith_date and phone */



CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)
SELECT * FROM persons

-- Task 2: add a column email 

ALTER TABLE persons 
   ADD email VARCHAR(20) NOT NULL

-- Task 3: remove column phone

ALTER TABLE persons 
 DROP COLUMN phone