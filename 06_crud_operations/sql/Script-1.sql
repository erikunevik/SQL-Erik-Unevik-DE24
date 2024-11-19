SELECT * FROM database.duckdb;

-- with this we can check glossaries we've learnt
UPDATE database.duckdb 
SET learnt = TRUE 
WHERE id IN (10);