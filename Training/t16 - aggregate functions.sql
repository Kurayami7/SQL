/*
Author: Areaf
Date: 26 March, 2023
Description: Aggregate functions | What are our all time global sales?
*/

SELECT
	sum(Total) AS [Total Sales],
	avg(Total) AS [Average Sales],
	max(Total) AS [Maximum Sale],
	min(Total) AS [Minimum Sale],
	count(*) AS [Sales Count] -- The reason I used an asterisk is because I want to count all the rows in the 
	--invoice table
	
FROM
	Invoice


	