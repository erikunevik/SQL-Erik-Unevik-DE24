SELECT * FROM main.food

CREATE TABLE IF NOT EXISTS cleaned_food AS (
SELECT
	id AS food,
	week_id AS week,
	SUBSTRING(week, 1, 4) AS year, -- konventiellt sätt	
	value AS number_searchers
FROM
	main.food
);
	
--(week[:4] AS year -- slciing alternativ

SELECT * FROM main.cleaned_food;