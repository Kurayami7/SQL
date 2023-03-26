/* 
How many customers purchased two songs at $0.99 cents each?

Author: Areaf
Date: 3 March, 2023
Description: Customers that purchased two songs at $0.99 cents each 
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total

FROM 
	Invoice

WHERE
	total BETWEEN 1.98 AND 5

ORDER BY -- An important info I discovered is that in the Order by, the keyword which comes first 
-- will have more priority
	total ASC,
	InvoiceDate
