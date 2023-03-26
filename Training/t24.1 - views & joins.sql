/*
Author: Areaf
Date: 26 March, 2023
Description: Views and joins
*/

-- An SQL query that is saved and can be executed repeatedly or referenced by other queries is
--called a VIEW
-- Note: In SQLite, modifying actually deletes the previous view and recreates it to perform 
--the necessary modifications.

CREATE VIEW V_Tracks_InvoiceLine AS

SELECT 
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
	
FROM
	InvoiceLine il

INNER JOIN
	Track t -- ***Track t is equivalent to Track AS t***
	
ON
	il.TrackId = t.TrackId
	
	