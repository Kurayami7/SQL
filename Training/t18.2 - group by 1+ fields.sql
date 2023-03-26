/*
Author: Areaf
Date: 26 March, 2023
Description: Grouping by more than one field at a time | What are the average invoice totals by billing country and city?
*/

SELECT
	BillingCountry,
	BillingCity,
	round (avg(Total), 2) AS [City Average]

FROM 
	Invoice
	
GROUP BY
	BillingCountry, BillingCity
	
ORDER BY 
	BillingCountry

