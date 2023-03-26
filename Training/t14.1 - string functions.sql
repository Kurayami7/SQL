/*
Author: Areaf
Date: 26 March, 2023
Description: Create a mailing list of US customers
*/


SELECT
	FirstName,
	LastName,
	Address,
	FirstName ||' '|| LastName ||' '|| Address ||', '|| City ||' '|| State ||' '|| PostalCode AS [Mailing Address],
/* The line of code above enhances readability and adds a space between the FN and LN */

	length(PostalCode) AS 'Length', -- A function that displays the length
	substr(PostalCode, 1, 5) AS [5 Digit Postal Code], -- The first parameter is the string, followed by the first
	--digit and the last digit where the removal happens. In this case, I want the first 5 digits removed
	
	upper(firstName) AS [First Name as Upper Case], -- A function that simply converts characters to uppercase
	lower(firstName) AS [First Name as Lower Case] -- A function that converts characters to lowercase
	
FROM
	Customer
	
WHERE
	Country = 'USA'





