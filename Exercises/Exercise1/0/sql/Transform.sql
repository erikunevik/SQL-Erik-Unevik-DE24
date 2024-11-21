-- Uppgift A

SELECT * FROM cleaned_salaries;

SELECT COUNT(*) employment_type FROM cleaned_salaries;

SELECT employment_type, COUNT(*) AS category_count
FROM cleaned_salaries
GROUP BY employment_type;


SELECT 
	CASE 
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
	END AS emplyment_type ,
	* EXCLUDE(employment_type)	
FROM
	cleaned_salaries;


-- För att uppdatera

UPDATE
	cleaned_salaries
SET
	employment_type = CASE
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
	END;

SELECT * FROM cleaned_salaries;


---------- B Company size. 

UPDATE
	cleaned_salaries
	SET
	company_size = CASE
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
	END;

SELECT * FROM cleaned_salaries;


-- g

UPDATE
	cleaned_salaries
SET
	remote_ratio = CASE
		WHEN remote_ratio = 100 THEN 'Remote'
		ELSE 'Office'
END;

-- Gick ej

ALTER TABLE new_table
ALTER COLUMN remote_ratio TYPE VARCHAR(50);

Update new_table
SET remote_ratio = CASE 
	WHEN remote_ratio = 100 THEN 'remote'
	ELSE 'office'
END;

-- För cleaned_data


ALTER TABLE cleaned_salaries
ALTER COLUMN remote_ratio TYPE VARCHAR(50);

Update cleaned_salaries
SET remote_ratio = CASE 
	WHEN remote_ratio = 100 THEN 'remote'
	ELSE 'office'
END;



SELECT * FROM cleaned_salaries;




-------------------- Då gör vi om allt fast för ny tabell





















	
	

