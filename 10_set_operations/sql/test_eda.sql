DESC;

-- film table

SELECT * FROM main.film;

SELECT * FROM main.film_list;

SELECT * FROM main.film_category;

SELECT * FROM main.country;

DESC SCHEMA main.TABLES;

DESC TABLE main.film;

SELECT
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_number_movies
FROM
	main.film;

SELECT * FROM main.film;

SELECT * FROM actor;

SELECT DISTINCT rating FROM main.film;

-- film actor

SELECT * FROM main.film_actor; -- man kan joina för att få ut mer info

DESC TABLE main.film_actor;

-- actor

SELECT * FROM main.actor;

-- category

SELECT * FROM main.category;
SELECT * FROM main.film_category;

SELECT * FROM main.customer c WHERE c.first_name LIKE 'D%';

SELECT 'customer' AS type, c.first_name, c.last_name FROM main.customer c WHERE c.first_name LIKE 'D%';




