-- Uppgift A

CREATE TABLE IF NOT EXISTS cleaned_salaries AS
SELECT * FROM data_engineer;

SELECT * FROM cleaned_salaries;

-- F Skapa en ny tabell


CREATE TABLE IF NOT EXISTS new_table;

SELECT * FROM new_table;

DROP TABLE ny_tabell;

CREATE TABLE IF NOT EXISTS new_table (
    experience_level VARCHAR(50),
    employment_type VARCHAR(50),
    job_title VARCHAR(50),
    salary_sek DECIMAL(15, 2),
    monthly_salary_sek DECIMAL(15, 0),
    remote_ratio BIGINT,
    company_size VARCHAR(50),
    salary_levels_sek VARCHAR(50)
    
    );
   -- Fungerar ej, kör chatgpt fast r samma. 
   
   CREATE TABLE IF NOT EXISTS new_table (
    experience_level VARCHAR(50),
    employment_type VARCHAR(50),
    job_title VARCHAR(50),
    salary_sek DECIMAL(15, 2),
    monthly_salary_sek DECIMAL(15, 0),
    remote_ratio BIGINT,
    company_size VARCHAR(50),
    salary_levels_sek VARCHAR(50)
);

DROP TABLE ny_tabell;

-- Behöver göra ny tabell för uppgift 1

   CREATE TABLE IF NOT EXISTS ny_tabell (
    experience_level VARCHAR(50),
    employment_type VARCHAR(50),
    job_title VARCHAR(50),
    salary_sek DECIMAL(15, 2),
    monthly_salary_sek DECIMAL(15, 0),
    remote_ratio BIGINT,
    company_size VARCHAR(50),
    salary_levels_sek VARCHAR(50)
);



SELECT * FROM ny_tabell;

-- Vi stoppar in:

INSERT INTO new_table (
    experience_level, 
    employment_type, 
    job_title, 
    salary_sek, 
    monthly_salary_sek, 
    remote_ratio, 
    company_size, 
    salary_levels_sek
)
SELECT
    experience_level, 
    employment_type, 
    job_title, 
    salary_sek, 
    monthly_salary_sek, 
    remote_ratio, 
    company_size, 
    salary_levels_sek
FROM cleaned_salaries;

--Och igen i ny_tabell

INSERT INTO ny_tabell (
    experience_level, 
    employment_type, 
    job_title,     
    remote_ratio, 
    company_size
)
SELECT
    experience_level, 
    employment_type, 
    job_title, 
    remote_ratio, 
    company_size
FROM data_engineer;


SELECT * FROM data_engineer;

CREATE TABLE IF NOT EXISTS ny_tabell AS
SELECT * FROM data_engineer;

SELECT * FROM cleaned_salaries;

SELECT remote_ratio, COUNT(*) AS count
FROM ny_tabell
GROUP BY remote_ratio
ORDER BY remote_ratio;






    
    


