/*
Author: Areaf
Date: 26 March, 2023
Description: Nesting Functions
*/

SELECT
	sum(Total) AS [Total Sales],
	round(avg(Total), 2) AS [Average Sales], -- The round function returns a floating point value rounded to the number of 
	--digits specified. In this case, the digits specified is 2
	max(Total) AS [Maximum Sale],
	min(Total) AS [Minimum Sale],
	count(*) AS [Sales Count] -- The reason I used an asterisk is because I want to count all the rows in the 
	--invoice table
	
FROM
	Invoice


	