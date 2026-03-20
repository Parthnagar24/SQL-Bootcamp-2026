USE  student

INSERT INTO students(student_id, student_name, student_DOB, student_section, email)
VALUES	
(1, 'Alex', NULL, 'C', NULL);


UPDATE students
SET student_name = 'US'
WHERE student_name = 'Alex';