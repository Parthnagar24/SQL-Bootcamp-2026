CREATE DATABASE student
USE student

CREATE TABLE students (
	student_id INT NOT NULL,
	student_name VARCHAR(20) NOT NULL,
	student_DOB DATE,
	student_Department VARCHAR(5) NOT NULL,
	student_Gender VARCHAR(2),

	CONSTRAINT pk_students PRIMARY KEY(student_id)
)

ALTER TABLE students ADD email VARCHAR (20)
ALTER TABLE students DROP column student_DOB


DROP TABLE students   --deletes entire table structure
DROP DATABASE student

CREATE TABLE professor (
	prof_id INT NOT NULL,
	student_id INT NOT NULL,
	student_prof VARCHAR(20) NOT NULL,
	prof_Department VARCHAR(10) NOT NULL,
	FOREIGN KEY (student_id) 
        REFERENCES students(student_id)

	CONSTRAINT pk_professor PRIMARY KEY(prof_id)
)