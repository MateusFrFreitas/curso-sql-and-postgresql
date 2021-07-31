SHOW data_directory;

SELECT oid, datname
FROM pg_database;

SELECT
	*
FROM
	pg_class;
	
/*
 * Heap or Heap file:
 * File that contains all the data (rows) of our table.
 * 
 * Tuple or Item:
 * Individual row from the table.
 * 
 * Block or Page:
 * The heap file is divided into many different "blocks" or "pages". Each page/block stores some number of rows.
 */