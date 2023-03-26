/*
Author: Areaf
Date: 6 March, 2023
Description: How many invoices were billed to brussels, Orlando, or Paris?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	Invoice
WHERE
	BillingCity IN('Brussels', 'Orlando', 'Paris')
-- 	BillingCity = 'Brussels'
ORDER BY
	InvoiceDate
