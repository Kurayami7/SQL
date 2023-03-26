/*
Author: Areaf
Date: 26 March, 2023
Description: Deleting data ***Unlike the INSERT clause, the DELETE clause is used with the WHERE clause. 
If the where clause is not used, all data will be deleted instead of the one specified***
*/

-- Data Manipulation Language (DML) are a series of SQL statements used to alter the data 
--stored in the tables of a database
-- A good tip to confirm the correct record for deletion is to replace the delete clause with the select clause

DELETE FROM 
	Artist
	
WHERE
	ArtistId = 276