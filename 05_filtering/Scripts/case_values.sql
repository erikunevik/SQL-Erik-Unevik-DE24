SELECT * FROM main.data_jobs;

-- EN --> entry_level

-- MI --> Mid level

-- SE --> Senior

-- EX --> Expert

SELECT
	CASE -- if
		WHEN experience_level = 'SE' THEN 'Senior' -- when för varje elif
		WHEN experience_level = 'MI' THEN 'Mid level'
		WHEN experience_level = 'EN' THEN 'Entry level'
		WHEN experience_level = 'EX' THEN 'Expert'
	END AS Experience_level -- Annars blir tabell rubriken mkt lång
	* EXCLUDE (experience_level),
FROM
	main.data_jobs;
	
SELECT * FROM main.data_jobs;

--- To persist changes in the table --> update it
UPDATE 
	main.data_jobs
SET 
		experience_level = CASE
			WHEN experience_level = 'SE' THEN 'Senior' -- when för varje elif
			WHEN experience_level = 'MI' THEN 'Mid level'
			WHEN experience_level = 'EN' THEN 'Entry level'
			WHEN experience_level = 'EX' THEN 'Expert'
	END;

SELECT * FROM main.data_jobs;

-- Vill filtrera i range, i phyton 500000 < x < 100000000
-- många andra språk, (x > 50000) && (x < 1000000)
-- I SQL Between AND operatorer
SELECT
	*
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 200000
	AND 500000;
	
SELECT
	job_title, 
	experience_level, 
	ROUND(salary_in_usd * 11.01 / 12) AS salary_sek_month
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 200000 AND 500000
	AND job_title = 'Data Engineer'
	--AND experience_level = 'Entry Level'
ORDER BY 
	salary_sek_month
DESC;

SELECT * FROM main.data_jobs;
	
