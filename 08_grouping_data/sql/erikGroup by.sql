SELECT * FROM main.cleaned_food;



SELECT
	food, 
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY 
    food
ORDER BY 
	total_searchers DESC
LIMIT 10;
   
   --- Fungerar ej

-- Kuchans

SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food
ORDER BY
	total_searches DESC
LIMIT 10;

--- Fugnear inte heller

SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
ORDER BY
	total_searches DESC
LIMIT 10;

SELECT DISTINCT year FROM main.cleaned_food;

-- wtf fungerar

SELECT
	year,
	SUM(number_searchers) AS total_searchers
FROM
	main.cleaned_food
GROUP BY
	YEAR
HAVING
	total_searches > 300000
ORDER BY 
	total_searches DESC;

-- Fungerar ej,körde chatgpts som gick

SELECT
    year,
    SUM(number_searchers) AS total_searchers
FROM
    main.cleaned_food
GROUP BY
    year
HAVING
    total_searchers > 300000
ORDER BY 
    total_searchers DESC;
   
   
   --- min egen
   
   
   SELECT
    year,
    SUM(number_searchers)
FROM
    main.cleaned_food
GROUP BY
    year
HAVING 
SUM(number_earchers) > 300000
ORDER BY 
    SUM(number_searches) DESC;
   
   -- Fungerade ej, körde chatgpts som gick
   
SELECT
    year,
    SUM(number_searchers)
FROM
    main.cleaned_food
GROUP BY
    year
HAVING
    SUM(number_searchers) > 300000
ORDER BY 
    SUM(number_searchers) DESC;



	











