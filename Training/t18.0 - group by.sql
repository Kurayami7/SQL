/*
Author: Areaf
Date: 26 March, 2023
Description: Grouping in SQL | What are the average invoice totals by city?
*/

SELECT
	BillingCity,
	round (avg(Total), 2) AS [City Average]

FROM 
	Invoice
	
GROUP BY
	BillingCity -- ***The group by clause applies to the non aggregated field***

ORDER BY 
	[City Average] DESC

