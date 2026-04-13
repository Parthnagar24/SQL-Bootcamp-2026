-- Remove dashes (-) from a phone number

SELECT
	'9839-3923-111' AS phone,
	REPLACE('9839-3923-111','-','+')