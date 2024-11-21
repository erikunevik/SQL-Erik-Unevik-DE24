SELECT * FROM cleaned_salaries;

--- C


SELECT 
    (11.01 * salary) / 12 AS salary_sek
FROM
    cleaned_salaries
ORDER BY
    salary_sek DESC;
   
   
   
--- Nu addera
   
   
ALTER TABLE cleaned_salaries 
ADD COLUMN salary_sek DECIMAL(10, 2);

--- Gick inte, fick ta bort

ALTER TABLE cleaned_salaries
DROP COLUMN salary_sek;

--- 

ALTER TABLE cleaned_salaries
ADD column salary_sek DECIMAL(15, 2);

UPDATE cleaned_salaries
SET salary_sek = salary * 11;

-- D, monthly salary 

ALTER TABLE cleaned_salaries
ADD column monthly_salary_sek DECIMAL(15, 0);

UPDATE cleaned_salaries
SET monthly_salary_sek = ROUND(salary_sek / 12, 0);

SELECT * FROM cleaned_salaries;

-- fungerade tillslut

-- E

-- Har commit issue, men vi prövar detta.




ALTER TABLE cleaned_salaries
ADD column salary_levels_sek VARCHAR(50);

UPDATE cleaned_salaries
SET salary_levels_sek = CASE
	WHEN salary_levels_sek > 1000000 THEN 'Insanley high'
	WHEN salary_levels_sek > 219000 AND salary_levels_sek <= 10000000  THEN 'High'
	WHEN salary_levels_sek > 130000 AND salary_levels_sek <= 219000 THEN 'Medium'
	WHEN salary_levels_sek <= 130000 THEN 'Low'
	ELSE 'Unknown'
	
END;

-- Fungerar ej pga "SQL Error: TransactionContext Error: cannot commit - no transaction is active"

SELECT * FROM cleaned_salaries;

ALTER TABLE cleaned_salaries
DROP COLUMN salary_levels_sek;


----För ny_tabell---------------------------------------















