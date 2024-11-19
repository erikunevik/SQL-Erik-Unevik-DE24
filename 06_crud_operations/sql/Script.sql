SELECT * FROM database.duckdb;''

-- with this we can check glossaries we've learnt
UPDATE database.duckdb 
SET learnt = TRUE 
WHERE id IN (3,6,7);


UPDATE
	database.duckdb
SET
	learnt = TRUE
WHERE
	id IN (9, 1, 11);

SELECT * FROM database.duckdb;




