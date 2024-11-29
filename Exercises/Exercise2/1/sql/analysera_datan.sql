SELECT * FROM staging.strings;




-- sql_word

SELECT
	trim(sql_word) AS trimmed_sql_word,
		
FROM staging.strings;

-- sql word med kombo trim och upper



SELECT
	trim(upper(sql_word)) AS trimmed_word
FROM
	staging.strings;

-- mellanrum och trim description


SELECT
	REPLACE(TRIM(description),'  ', ' ') as trimmed_description
FROM 
	staging.strings;

-- Nu example 

SELECT
	REPLACE(TRIM(example),'  ', ' ') as trimmed_description
FROM 
	staging.strings;

-- SEn bort med ; helt

SELECT
	REPLACE(TRIM(example),
	';',
	'')
FROM
	staging.strings;

SELECT
	*
FROM
	staging.strings;

---- Alex lösning


CREATE TABLE IF NOT EXISTS refined.sql_glossary_example_fixed AS ( 
SELECT
    example,
    CASE
        WHEN LOWER(example) LIKE '%select%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'select', 'SELECT')
        WHEN LOWER(example) LIKE '%from%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'from', 'FROM')
        WHEN LOWER(example) LIKE '%where%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'where', 'WHERE')
        WHEN LOWER(example) LIKE '%join%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'join', 'JOIN')
        WHEN LOWER(example) LIKE '%group by%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'group by', 'GROUP BY')
        WHEN LOWER(example) LIKE '%insert into%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'insert into', 'INSERT INTO')
        WHEN LOWER(example) LIKE '%drop table%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'drop table', 'DROP TABLE')
        ELSE REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g')
    END AS modified_example
FROM refined.sql_glossary);
 
 
SELECT * FROM refined.sql_glossary_example_fixed;

--- Min variant på den


SELECT
    example,
    CASE
        WHEN LOWER(example) LIKE '%select%' THEN REPLACE(REGEXP_REPLACE (TRIM(LOWER(example)), ' +', ' ', 'g'), 'select', 'SELECT')
        WHEN LOWER(example) LIKE '%from%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'from', 'FROM')
        WHEN LOWER(example) LIKE '%where%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'where', 'WHERE')
        WHEN LOWER(example) LIKE '%join%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'join', 'JOIN')
        WHEN LOWER(example) LIKE '%group by%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'group by', 'GROUP BY')
        WHEN LOWER(example) LIKE '%insert into%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'insert into', 'INSERT INTO')
        WHEN LOWER(example) LIKE '%drop table%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'drop table', 'DROP TABLE')
        ELSE REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g')
    END AS modified_example
FROM staging.strings;

--- C, filterra på ord

SELECT * FROM refined.strings;

SELECT DISTINCT description
FROM refined.strings
WHERE description LIKE '%an%';

--- ny ALla

SELECT DISTINCT description, sql_word, example
FROM refined.strings
WHERE description LIKE '%SELECT%'
OR sql_word LIKE '%SELECT'
OR example LIKE '%SELECT%';


---- två st

SELECT DISTINCT description, sql_word, example
FROM refined.strings
WHERE description LIKE '%SELECT%'
AND example LIKE '%SELECT%';



