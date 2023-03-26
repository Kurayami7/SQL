/* 
Author: Areaf
Date: 28 February, 2023
Description: Sort out the track table in descending order. Include the name, composer, and unit price
*/

SELECT
Name AS [Track Name],
Composer as Composer, -- In this line, I intentionally used AS in lowercase to check if it has any effect. It doesn't
UnitPrice AS 'Unit Price'


FROM
Track

ORDER BY
-- Name DESC
Composer DESC