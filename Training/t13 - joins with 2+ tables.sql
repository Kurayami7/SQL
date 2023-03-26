/*
Created by: Areaf
Date: 26 March, 2023
Description: Joins - More than two tables | What employees are responsible for the 10 highest
--individual sales?
*/

-- A primary key is a unique identifying field for a table
-- A foreign key is a field or set of fields in one table that
--refers to the primary key in another table


SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
	
FROM
	Invoice AS i
	
INNER JOIN -- Join is a command that combines fields from two or more tables of a relational 
--database
	Customer AS c
ON 
	i.CustomerId = c.CustomerId -- Since there are 2 versions of the customer id field
--in the tables, it is important to join them together

INNER JOIN 
	Employee as e

ON
	c.SupportRepId = e.EmployeeId -- The support rep inside the customer table is the same 
--as the employee in the employee table
	
ORDER BY
	total DESC
	
LIMIT 10

	