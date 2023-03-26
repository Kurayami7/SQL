/*
Author: Areaf
Date: 26 March, 2023
Description: Updating data ***Unlike the INSERT clause, the UPDATE clause is used with the WHERE clause. 
If the where clause is not used, all data will be updated instead of the one specified***
*/

-- Data Manipulation Language (DML) are a series of SQL statements used to alter the data 
--stored in the tables of a database

UPDATE
	Artist

SET Name = 'Damian Marley'

WHERE 
	ArtistId = 276
