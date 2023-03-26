/*
Author: Areaf
Date: 6 March, 2023
Description: How many invoices were billed in cities that start with B?
*/

-- % is the wild card character. It works in conjuction with the like operator. It basically means
-- "I don't care what comes next"
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
-- 	BillingCity like 'B%' -- This can be used to find out cities that start with B
	BillingCity like '%B%' -- This can be used to find out cities that include a B
	-- When we say 'B', it is not case-sensitive
ORDER BY 
	InvoiceDate