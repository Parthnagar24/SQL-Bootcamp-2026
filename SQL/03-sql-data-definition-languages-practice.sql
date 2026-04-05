--Data Definition Language

--create a database

CREATE DATABASE ab
USE  ab

--create a table

CREATE TABLE students
(
	id INT NOT NULL,
	Age INT NOT NULL,
	name VARCHAR(12) ,
	CONSTRAINT pk_students PRIMARY KEY(id)
)

--Add a column for email

ALTER TABLE students ADD email VARCHAR(20) NOT NULL

--Drop Age column 

ALTER TABLE students DROP Age

--DROP TABLE 

DROP TABLE students

