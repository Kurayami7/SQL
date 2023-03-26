/*
Author: Areaf
Date: 26  March, 2023
Description: Views
*/

-- An SQL query that is saved and can be executed repeatedly or referenced by other queries is called a view
-- A view is also called a virtual table
 
CREATE VIEW V_AvgTotal AS

SELECT 
	round(avg(total), 2) AS [Average Total]

FROM 
	Invoice