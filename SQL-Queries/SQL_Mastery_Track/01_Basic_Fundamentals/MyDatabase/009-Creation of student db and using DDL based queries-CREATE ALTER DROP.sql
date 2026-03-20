CREATE DATABASE student

CREATE TABLE students
(
	student_id INT NOT NULL,
	student_name VARCHAR(20) NOT NULL,
	student_DOB DATE,
	student_phone VARCHAR(12),
	student_section VARCHAR(3) NOT NULL

	CONSTRAINT PK_students PRIMARY KEY (student_id)
)


ALTER TABLE students ADD email VARCHAR(20)
ALTER TABLE students DROP COLUMN student_phone


DROP TABLE students