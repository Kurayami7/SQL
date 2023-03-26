/*
Author: Areaf
Date: 26 March, 2023
Description: Project - Missing Money Matters
*/

/*
Challenge 1 
1. How many transactions took place between the years 2011-2012?
2. How much money did WDSA make during the same period?
*/

-- How many transactions took place between the years 2011-2012?
SELECT
	count(*)

FROM 
	Invoice
	
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
	
-- How much money did WDSA make during the same period?
SELECT
	sum(total) AS Total
	
FROM
	Invoice
	
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
 

 
 
/*
Challenge 2
1. Get a list of customers who made purchases between 2011 and 2012.
2. Get a list of customers, sales reps, and total transaction amounts for each customer
between 2011 and 2012.
3. How many transactions are above the average transaction amount during the same
time period?
4. What is the average transaction amount for each year that WSDA Music has been
in business? 
*/

-- 1. Get a list of customers who made purchases between 2011 and 2012.
SELECT
	c.FirstName,
	c.LastName,
	i.total

FROM
	invoice AS i

INNER JOIN 
	customer AS c
ON i.CustomerId = c.CustomerId
	
WHERE 
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
ORDER BY
	i.total DESC
	
	
	
-- 2. Get a list of customers, sales reps, and total transaction amounts for each customer
--between 2011 and 2012.
SELECT
	c.FirstName AS [Customer First Name], 
	c.LastName AS [Customer Last Name],
	e.FirstName AS [Employee First Name],
	e.LastName AS [Employee Last Name],
	i.total

FROM
	invoice AS i

INNER JOIN 
	customer AS c
ON i.CustomerId = c.CustomerId
	
INNER JOIN 
	employee AS e
ON e.EmployeeId = c.SupportRepId
	
WHERE 
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
ORDER BY
	i.total DESC
	
	
	
-- 3. How many transactions are above the average transaction amount during the same
--time period?

-- Breaking into 2 parts, first, I will find the average transaction amount during the period and then use that as a subquery


SELECT
	count(total) AS [Number of Transactions]
	
FROM
	Invoice

WHERE
	total >
(
SELECT
	round(avg(total), 2) AS [Avg Transaction Amount]
	
FROM
	Invoice

WHERE 
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	)
	
AND
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
	
	
-- 4. What is the average transaction amount for each year that WSDA Music has been
--in business? 
SELECT
	round(avg(total), 2) AS [Avg Transaction Amount],
	strftime('%Y', InvoiceDate) AS Year
	
	
FROM 
	Invoice

GROUP BY 
	strftime('%Y', InvoiceDate)


	
	
	
	
/*
Challenge 3 
1. Get a list of employees who exceeded the average transaction amount from sales they
generated during 2011 and 2012.
2. Create a Commission Payout column that displays each employee’s commission
based on 15% of the sales transaction amount.
3. Which employee made the highest commission?
4. List the customers that the employee identified in the last question.
5. Which customer made the highest purchase?
6. Look at this customer record—do you see anything suspicious?
7. Who do you conclude is our primary person of interest?
*/

-- 1. Get a list of employees who exceeded the average transaction amount from sales they
--generated during 2011 and 2012.

SELECT 
	e.FirstName,
	e.LastName,
	sum(i.total) AS [Total Sales]

FROM
	Invoice AS i 
	
INNER JOIN
	Customer AS c
	
ON i.CustomerId = c.CustomerId
	
INNER JOIN
	Employee AS e
	
ON e.EmployeeId = c.SupportRepId

WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
AND 
	i.total > 11.66 
	
GROUP BY
	e.FirstName,
	e.LastName

	

	
	
	
	
-- 2. Create a Commission Payout column that displays each employee’s commission
--based on 15% of the sales transaction amount.  
SELECT 
	e.FirstName,
	e.LastName,
	sum(i.total) AS [Total Sales],
	round(sum(i.total)*.15, 2) AS [Commission Payout]

FROM
	Invoice AS i 
	
INNER JOIN
	Customer AS c
	
ON i.CustomerId = c.CustomerId
	
INNER JOIN
	Employee AS e
	
ON e.EmployeeId = c.SupportRepId

WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31' 
	
GROUP BY
	e.FirstName,
	e.LastName

ORDER BY 
	e.LastName
	
	
	
	
-- 3. Which employee made the highest commission?
SELECT 
	e.FirstName,
	e.LastName,
	sum(i.total) AS [Total Sales]

FROM
	Invoice AS i 
	
INNER JOIN
	Customer AS c
	
ON i.CustomerId = c.CustomerId
	
INNER JOIN
	Employee AS e
	
ON e.EmployeeId = c.SupportRepId

WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
AND 
	i.total > 11.66 
	
GROUP BY
	e.FirstName,
	e.LastName

	

	
	
	
	
--4. List the customers that the employee identified in the last question.

SELECT 
	c.FirstName AS [Customer First Name],
	c.LastName AS [Customer Last Name],
	e.FirstName AS [Employee First Name],
	e.LastName AS [Employee Last Name]
	sum(i.total) AS [Total Sales],
	round(sum(i.total)*.15, 2) AS [Commission Payout]

FROM
	Invoice AS i 
	
INNER JOIN
	Customer AS c
	
ON i.CustomerId = c.CustomerId
	
INNER JOIN
	Employee AS e
	
ON e.EmployeeId = c.SupportRepId

WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31' 
	AND e.LastName = 'Peacock'
	
GROUP BY
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName

ORDER BY 
	[Total Sales] DESC
	
	
	
	
	
-- 5. Which customer made the highest purchase?
-- John Doeein - 1000.86





-- 6. Look at this customer record—do you see anything suspicious?
SELECT
	*

FROM
	Customer AS C
	
WHERE
	c.LastName = "Doeein"


	
-- 7. Who do you conclude is our primary person of interest?
-- It is Jane Peacock as her SupportRepId in the Customer table matches with that of her corresponding EmployeeId 
--in the Employee table. Furthermore, multiple fields are not filled out in the Customer field for John Doeein

