/*
Author: Areaf
Date: 26 March, 2023
Description: Subqueries | Gather data about all invoices that are less than this average?
*/

SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total

FROM
	Invoice
	
WHERE 
	Total <
	(SELECT round(avg(total), 2) FROM invoice) -- The query inside the parenthesis is referred to as 
	--the inner query, while the rest if referred to as the outer query

ORDER BY
	total DESC