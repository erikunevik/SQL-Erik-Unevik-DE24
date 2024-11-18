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

--- Kuchans variant

