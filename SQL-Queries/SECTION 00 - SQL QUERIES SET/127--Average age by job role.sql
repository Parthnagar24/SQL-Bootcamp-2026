--Average age by job role.

SELECT
	JobRole,
	AVG(Age)
FROM Employeees
GROUP BY JobRole