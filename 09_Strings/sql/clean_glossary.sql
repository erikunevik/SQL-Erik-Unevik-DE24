CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE
    IF NOT EXISTS refined.sql_glossary2 AS (
        SELECT
            UPPER(TRIM(sql_word)) AS sql_word,
            description,
            example
        FROM
            staging.sql_glossary
    );

-- TOOD for the reader do more cleaning
   
   SELECT * FROM refined.sql_glossary2;
   

  -- Får sql.glossary2 att se bra ut, trimmar den 

SELECT
    TRIM(description) AS description1
FROM
    refined.sql_glossary2;
    
-- Vill göra samma med example. Göra s¨å att kommandon blir stora.
   
   SELECT
    	TRIM(example) AS example2,
   		CASE 
    		WHEN example = 'select' OR example = 'create table' OR example = 'select * from' OR example = 'from' OR example = 'insert into' THEN UPPER(example)
    		ELSE example
		END AS modified_example
   FROM 
  	refined.sql_glossary2;
  
  -- Man måste uppdatera tabellen först
  
  UPDATE refined.sql_glossary2
SET example = TRIM(
    CASE 
        WHEN LOWER(example) IN ('select', 'create table', 'selec *from', 'from', 'insert into', 'drop table') THEN UPPER(example)
        ELSE example
    END
);

SELECT *
FROM refined.sql_glossary2;

-- Fungera rej så prövar ny

UPDATE refined.sql_glossary2
SET example = TRIM(
    CASE 
        WHEN LOWER(TRIM(example)) IN ('select', 'create table', 'select*from', 'from', 'insert into', 'drop table') 
        THEN UPPER(TRIM(example))
        ELSE example
    END
);

SELECT *
FROM refined.sql_glossary2;

--- Fungrar ej  så gör mindre 


SELECT TRIM(example), LOWER(example)
FROM refined.sql_glossary2;

-- update och trimmar

UPDATE refined.sql_glossary2
SET example = LOWER(TRIM(example));

-- prövar update sen

UPDATE refined.sql_glossary2
SET example =
    CASE 
        WHEN example IN ('select', 'create table', 'select*from', 'from', 'insert into', 'drop table') 
        THEN UPPER(TRIM(example))
        ELSE example
    END;


SELECT *
FROM refined.sql_glossary2;

-- Fungerar ej

UPDATE refined.sql_glossary2
SET example = REGEXP_REPLACE(example, '\\b(select|create table|insert into|from|drop table)\\b', UPPER('\\0'))
WHERE example REGEXP '\\b(select|create table|insert into|from|drop table)\\b';

-- PRövar ny


UPDATE refined.sql_glossary2
SET example = REGEXP_REPLACE(example, '\\b(select|create table|select\\*from|from|insert into|drop table)\\b', UPPER('\\0'))
;

SELECT *
FROM refined.sql_glossary2;

-- Gick ej prövar ännu en:

UPDATE refined.sql_glossary2
SET example = 
    CASE
        WHEN LOWER(example) = 'select' THEN UPPER(example)
        WHEN LOWER(example) = 'create table' THEN UPPER(example)
        WHEN LOWER(example) = 'select*from' THEN UPPER(example)
        WHEN LOWER(example) = 'from' THEN UPPER(example)
        WHEN LOWER(example) = 'insert into' THEN UPPER(example)
        WHEN LOWER(example) = 'drop table' THEN UPPER(example)
        ELSE example
    END;
   
   SELECT *
FROM refined.sql_glossary2;

-- gick ej men

SELECT
    example,
    CASE
        WHEN LOWER(example) = 'select' THEN UPPER(example)
        WHEN LOWER(example) = 'create table' THEN UPPER(example)
        WHEN LOWER(example) = 'select*from' THEN UPPER(example)
        WHEN LOWER(example) = 'from' THEN UPPER(example)
        WHEN LOWER(example) = 'insert into' THEN UPPER(example)
        WHEN LOWER(example) = 'drop table' THEN UPPER(example)
        ELSE example
    END AS modified_example
FROM refined.sql_glossary2;

-- fungerar ej 







    
