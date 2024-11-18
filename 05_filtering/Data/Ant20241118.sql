SELECT * FROM main.data_jobs;

SELECT * FROM main.data_jobs WHERE salary_in_usd < 50000;

-- Ger antalet rader

SELECT
	COUNT(*) AS salary_lower__50k
FROM
	main.data_jobs
WHERE
	salary_in_usd < 50000;

-- Focus on XP level, distinct filtrerar kategorier. 
	
SELECT DISTINCT experience_level FROM main.data_jobs;

SELECT
	*
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';

SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';

SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'MI';



