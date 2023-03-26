/*
Author: Areaf
Date: 6 March, 2023
Description: Get a list of all invoices that are greater than 1.98 and from any city
-- who's name starts with P or D
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoice
WHERE
	(BillingCity LIKE 'P%' OR BillingCity LIKE 'D%') AND total > 1.98
	-- It will not work without the parenthesis
ORDER BY 
	total ASC