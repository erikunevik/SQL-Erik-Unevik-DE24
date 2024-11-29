CREATE SCHEMA IF NOT EXISTS staging;


CREATE TABLE IF NOT EXISTS staging.strings AS
SELECT
    *
FROM
    read_csv_auto('C:\Users\eriku\Desktop\DataenginerSTI2024-2026\SQL30YP\Github\SQL-Erik-Unevik-DE24\Exercises\Exercise2\1\uppgift2_del1.csv');
    
   
SELECT
	*
FROM
	staging.strings;
	
