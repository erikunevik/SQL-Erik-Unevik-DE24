-- When we have one or two spaces we want to match it


	

SELECT * FROM staging.sql_glossary;

SELECT
    regexp_replace(trim(description),
    ' +',
    ' ', 
    'g'),
    lower(regexp_replace(trim(example),
    ' +',
    ' ', 
    'g'))
FROM
    staging.sql_glossary;
   
   
   -- Krymer ned bokstäver så man hittar dom 
   
SELECT
	*
FROM
	staging.sql_glossary
WHERE
	LOWER(description) LIKE '%select%'; -- like för select vatsomehlst, även inuti ord

SELECT
	*
FROM
	staging.sql_glossary
WHERE
	regexp_matches(LOWER(description),'select\b'); -- bara som enskilda ord
	
	
