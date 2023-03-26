/*
Author: Areaf
Date: 6 March, 2023
Description: How many invoices were billed on May 22, 2010?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoice
WHERE
	InvoiceDate = '2010-05-22 00:00:00' -- Finding invoices by specifying the date and time
	date(InvoiceDate) = '2010-05-22' -- Finding invoices by using a date function, and not having to specify time
ORDER BY
	InvoiceDate