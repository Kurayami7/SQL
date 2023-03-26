/*
Author: Areaf
Date: 6 March, 2023
Description: Get a list of all invoices that were billed after 2010-05-22 and have a total of less than $3?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoice
WHERE
	DATE(InvoiceDate)>'2010-05-22' AND total < 3
ORDER BY 
	InvoiceDate