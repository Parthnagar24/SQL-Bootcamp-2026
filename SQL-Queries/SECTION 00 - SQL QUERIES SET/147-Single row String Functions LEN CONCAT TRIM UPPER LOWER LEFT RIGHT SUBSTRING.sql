--Display length of each employee name
--Display employee names in UPPERCASE
--Display employee names in lowercase
--Display full info as: Name - City
--Remove extra spaces from employee names
--Display first 3 characters of employee names
--Display last 2 characters of city name
--Display employee name starting from 2nd character, next 4 characters


SELECT
	LEN(Name),
	UPPER(Name),
	LOWER(Name),
	CONCAT(Name,' ','-',' ',City),
	TRIM(Name),
	LEN(TRIM(Name)),
	LEFT(Name,3),
	RIGHT(City,2),
	SUBSTRING(Name,2,4)
FROM employ



