SELECT * FROM staging.sql_glossary;

-- Array like slicing

SELECT
	sql_word,
	sql_word[:2],
	sql_word[2:5]
FROM
	staging.sql_glossary;
	
-- get item


SELECT
	sql_word,
	sql_word[0], -- för v räknar från 1
	sql_word[1],
	sql_word[-1] -- den sista
FROM
	staging.sql_glossary;

-- concatnation
	
SELECT 'fun' || 'joke'

SELECT
	'SQL command' || 'joke'
FROM
	staging.sql_glossary;
	
-- remove spaces 

SELECT
	trim(sql_word) AS trimmed_word,
	trimmed_word[1], 
	trimmed_word[-1]
FROM
	staging.sql_glossary;

-- uppercase

SELECT
	UPPER(trim(sql_word)) AS trimmed_word, -- a function in a function, nested
	trimmed_word[1], 
	trimmed_word[-1]
FROM
	staging.sql_glossary;



SELECT
	replace(trim(description), '  ', ' ')
FROM
	staging.sql_glossary;






	

