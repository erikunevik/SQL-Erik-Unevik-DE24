SELECT * FROM data_jobs;

SELECT
	job_title,
	experience_level,
	(10.68 * salary_in_usd)/ 12 AS salary_sek_month
FROM
	data_jobs
WHERE
	(salary_sek_month>200000)
	AND (salary_sek_month < 500000)
ORDER BY
	salary_sek_month DESC;