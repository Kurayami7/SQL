/* 
Author: Areaf
Date: 28 February, 2023
Description: This query displays all the customer's first names, last names, and email addresses 
*/

SELECT -- The select clause
	FirstName AS [Customer First Name], -- One way of changing the way data displays is using the AS keyword. It is called
	-- aliasing. We do this to make things more readable in a business perspective
	LastName AS 'Customer Last Name', -- Both [] and '' are equally efficient at displaying names that are more convenient
	-- for businesses.
	Email AS EMAIL -- EMAIL is just a single word without spaces so I used it as is, without '' or []

FROM -- The from clause
	Customer -- Specifies the table to work with

ORDER BY
	FirstName ASC, -- Asc meaning ascending. It sorts by descending order. Specifying multiple sorting strategies 
	-- is also perfectly applicable
	LastName DESC -- Desc means descending. It sorts by descending order (from Z-A). The default is ASC
	LIMIT 7  -- Limit comes after the Order By clause. It limits the results by the assigned value (7 in this case)
	
	
	