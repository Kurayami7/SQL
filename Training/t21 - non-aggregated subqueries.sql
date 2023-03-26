/*
Author: Areaf
Date: 26 March, 2023
Description: Subqueries without aggregate functions || Get invoices that occur after a particular date
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity

FROM 
	Invoice
	
WHERE
	InvoiceDate >  
(SELECT
	InvoiceDate
	
FROM 
	Invoice

WHERE
	InvoiceId = 251)
	
	
ORDER BY 
	InvoiceDate