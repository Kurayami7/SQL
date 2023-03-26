/*
Author: Areaf
Date: 3 March, 2023
Description: How many invoices do we have that are exactly $1.98 or $3.96?
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total

FROM
	invoice
	
WHERE
	total IN (1.98, 3.96)
	
ORDER BY
	InvoiceDate ASC