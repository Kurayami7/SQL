/*
Author: Areaf
Date: 26 March, 2023
Description: Grouping in SQL | What are the average invoice totals that are greater than $5.00 for cities starting with B?
*/

SELECT
	BillingCity,
	round (avg(Total), 2) AS [City Average]

FROM 
	Invoice
	
WHERE -- ***The where clause always comes after the FROM clause and before the GROUP BY***
	BillingCity LIKE 'B%'
	
GROUP BY
	BillingCity -- ***The group by clause applies to the non aggregated field***. The filtering must be performed before
	--the grouping. Filtering = Where, Group By.  Grouping = Having, Order by
	
HAVING -- ***The having clause always comes after the group by***
	[City Average] > 5 -- The reason I used the having clause and not in where is because the where clause does not take in 
	--aggregate functions
	
	-- ** The difference between the where and having clauses is that where is used to filter non-aggregate data, but the 
	--having clause is used to filter aggregate data

ORDER BY 
	[City Average] DESC

