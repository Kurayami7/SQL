/*
Author: Areaf
Date: 6 March, 2023
Description: WSDA Music Sales Goal:
They want as many customers as possible to spend between $7 and $15

Sales Categories:
Baseline Purchase - Between $0.99 and $1.99
Low Purchase - Between $2.00 and $6.99
Target Purchase - Between $7.00 and $15.00
Top Performer - Above $15.00
*/

-- Note: The case keyword is used inside the select clause
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
		WHEN total < 2.00 THEN 'Baseline Purchase'
		WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
		WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
		ELSE 'Top Performer'
	END AS PurchaseType -- The end keyword brings an end to the case keyword. As specifies an aliasing 
		-- We are calling this Case Statement Column a PurchaseType (aliasing)
FROM 
	invoice
-- WSDA wants to know which cities their top performing sales come from (I am doing it in the where clause)
WHERE
	PurchaseType = 'Top Performer'
ORDER BY
	InvoiceDate 