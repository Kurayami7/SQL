/*
Author: Areaf
Date: 6 March, 2023
Description: Get all invoices who's billing city starts with P or D
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoice
WHERE
	BillingCity LIKE 'P%' OR BillingCity LIKE 'D%'
ORDER BY 
	InvoiceDate