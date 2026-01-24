/* 
MINI PROJECT - 01
Student Result Management System
*/

CREATE TABLE students (
	student_id INT NOT NULL,
	name VARCHAR(20) NOT NULL,
	department VARCHAR(10) NOT NULL,
	year DATE ,
	CONSTRAINT pk_students PRIMARY KEY (student_id)
	)

INSERT INTO students(student_id,name,department, year) 
VALUES
	(1,'Alex','CSE','10-05-2023'),
	(2,'Bob','ME','12-06-2023'),
	(3,'Charlie','CSE',NULL),
	(4,'Dexter','CSE','01-01-2024'),
	(5,'Fitzee','AI',NULL),
	(6,'Elrick','ECE','04-08-2022'),
	(7,'Rusec','ME','02-02-2024'),
	(8,'Bobby','CSE','02-02-2024')

DROP TABLE marks;

CREATE TABLE marks (
	student_id INT NOT NULL,
	subject VARCHAR(20) NOT NULL,
	marks DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (student_id) REFERENCES students(student_id)
);


INSERT INTO marks(student_id,subject,marks) 
VALUES
	(1,'comp',23.03),
	(2,'comp',56.04),
	(3,'comp',55),
	(4,'comp',90.054),
	(5,'comp',0.32),
	(6,'comp',0),
	(7,'comp',100),
	(8,'comp',86.98843)

SELECT *
FROM marks

SELECT * 
FROM students

-- Show all students from cse department

SELECT *
FROM students
WHERE department= 'CSE'

--List students ordered by name
SELECT *
FROM students
--ORDER BY name ASC
ORDER BY name DESC

-- FIND distinct department

SELECT DISTINCT     -- used to avoid duplication
department
FROM students


-- update marks of 1 student
UPDATE marks
SET marks = 89.0933
WHERE student_id =1

--DELETE STUDENT WHO LEFT COLLEGE

DELETE  TABLE marks
WHERE student_id = 2


DROP TABLE students
DROP TABLE marks