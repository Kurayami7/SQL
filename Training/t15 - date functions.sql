/*
Author: Areaf
Date: 26 March, 2023
Description: Calculate the ages of all employees
*/

SELECT
	LastName,
	FirstName,
	BirthDate,
	strftime('%Y-%m-%d', BirthDate) AS [Birthdate Without Timecode], -- Note that the format has to be captital Y, 
	--followed by lowercase m and d
	strftime('%Y-%m-%d', 'now') - strftime('%Y-%m-%d', BirthDate) AS Age -- The now function reads the present date
	--received from the computer
	
FROM
	Employee
	