SELECT * FROM cleaned_salaries;

-- E, lönenivåer, descriptivt

SELECT
	*


-- F Utforska tabellen

DESCRIBE cleaned_salaries;



----------------1 A
SELECT 
    job_title, 
    COUNT(*) AS count
FROM cleaned_salaries
GROUP BY job_title
ORDER BY COUNT(*) DESC;

-- 1B in total

SELECT COUNT(DISTINCT job_title) AS total_job_titels
FROM cleaned_salaries;

---1C-- Kan ej 

SELECT 
	salary_levels_sek,
	COUNT(DISTINCT job_title) AS num_job_titels
FROM cleaned_salaries
GROUP by salary_levels_sek
ORDER BY num_job_titels DESC;

---1 D----

SELECT
	experience_level,
	AVG(salary) AS mean_salary
	
FROM cleaned_salaries
GROUP BY experience_level;

--- Av någon anledning måste jag ha med work year..

--- MEAN

SELECT
    experience_level,
    work_year,
    ROUND(AVG(salary), 0) AS mean_salary
FROM cleaned_salaries
GROUP BY experience_level, work_year;


SELECT * FROM cleaned_salaries;

-- Median

SELECT 
	experience_level,
	percentile_cont(0.5) WITHIN GROUP (ORDER BY salary) AS median_salary
	FROM cleaned_salaries
	GROUP BY experience_level
	ORDER by median_salary DESC;

---- 1E


SELECT 
	j.job_title,
	j.median_salary,
	COUNT(*) AS count
FROM (

	SELECT 
		job_title,
		percentile_cont(0.5) WITHIN GROUP (ORDER BY salary) AS median_salary
	FROM cleaned_salaries
	GROUP by job_title
) AS j
JOIN cleaned_salaries c ON j.job_title = c.job_title
GROUP BY j.job_title, j.median_salary
ORDER BY j.median_salary DESC

SELECT 
    j.job_title,
    j.median_salary,
    COUNT(c.job_title) AS count
FROM (
    SELECT 
        job_title,
        percentile_cont(0.5) WITHIN GROUP (ORDER BY salary) AS median_salary
    FROM cleaned_salaries
    GROUP BY job_title
) AS j
JOIN cleaned_salaries c ON j.job_title = c.job_title
GROUP BY j.job_title, j.median_salary
ORDER BY j.median_salary DESC;

-- f

SELECT
    job_title,
    -- Calculate percentage of remote jobs
    (COUNT(CASE WHEN remote_ratio = 'remote' THEN 1 END) * 100.0) / COUNT(*) AS remote_percentage,
    
    -- Calculate percentage of office jobs
    (COUNT(CASE WHEN remote_ratio = 'office' THEN 1 END) * 100.0) / COUNT(*) AS office_percentage
FROM cleaned_salaries
GROUP BY job_title
ORDER BY remote_percentage DESC;

-- Fungerar ej. 

-- g

-- Genrellt

SELECT 
	company_size,
	job_title,
	ROUND(AVG(salary), 2) AS average_salary
FROM cleaned_salaries
GROUP BY company_size, job_title
ORDER BY company_size, average_salary DESC;

SELECT * FROM cleaned_salaries;

-- För Data engineer

SELECT 
	company_size,
	ROUND(AVG(salary), 2) AS average_salary
FROM cleaned_salaries
WHERE job_title = 'Data Engineer'
GROUP BY company_size
ORDER BY average_salary DESC;

-- I Se ifall det finns samband med annat land





SELECT 
    employee_residence,
    ROUND(AVG(salary), 2) AS average_salary
FROM cleaned_salaries
WHERE job_title = 'Data Engineer'
GROUP BY employee_residence
ORDER BY average_salary DESC;
















   











