/*
Created by: Areaf
Date: 25 March, 2023
Description: Joins
*/

-- A primary key is a unique identifying field for a table
-- A foreign key is a field or set of fields in one table that
--refers to the primary key in another table

-- An inner join is best understood using a venn diagram. Only the overlapping content/fields are
--joined. It is used to bring corresponding data together from different tables.

-- A left outer join combines all the records from the left table with any matching records from 
--the right table. The left or right depends on the order the tables are listed in the join statement
--In case the invoice table is listed first, and the customer table is listed after the left outer 
--join, everything in the invoice table will be displayed, and only the matching fields from the 
--customer table

-- A right outer join combines all the records from the right table with any matching records from 
--the left table.  

SELECT
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
	
FROM
	Invoice AS i
	
INNER JOIN -- Join is a command that combines fields from two or more tables of a relational 
--database
	Customer AS c
ON 
	i.CustomerId = c.CustomerId -- Since there are 2 versions of the customer id field
--in the tables, it is important to join them together

ORDER BY
	c.CustomerId
	