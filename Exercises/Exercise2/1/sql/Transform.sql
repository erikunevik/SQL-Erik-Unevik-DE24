

SELECT * FROM refined.strings;


--- SToppar in datan from main till refined


INSERT INTO refined.strings (sql_word, description, example)
SELECT sql_word, description, example
FROM staging.strings;


--- Updaterar example


    UPDATE refined.strings
    SET example = CASE
        WHEN LOWER(example) LIKE '%select%' THEN REPLACE(REGEXP_REPLACE (TRIM(LOWER(example)), ' +', ' ', 'g'), 'select', 'SELECT')
        WHEN LOWER(example) LIKE '%from%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'from', 'FROM')
        WHEN LOWER(example) LIKE '%where%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'where', 'WHERE')
        WHEN LOWER(example) LIKE '%join%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'join', 'JOIN')
        WHEN LOWER(example) LIKE '%group by%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'group by', 'GROUP BY')
        WHEN LOWER(example) LIKE '%insert into%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'insert into', 'INSERT INTO')
        WHEN LOWER(example) LIKE '%drop table%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'drop table', 'DROP TABLE')
        ELSE REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g')
    END; 

   SELECT * FROM refined.strings;
  
  -- NU sql_word och description
  
  UPDATE refined.strings
  SET 
  sql_word = TRIM(UPPER(sql_word)),
  description = TRIM(description);
  	
  
  



