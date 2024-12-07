-- Fråga 2.3.a.

DESCRIBE ALL TABLES;

DESCRIBE main.SCHEMA SCHEMATA;

DESC main.schema schemata;

desc;

--Fråga 2.3.b

SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM category;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM customer_list;
SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM film_list;
SELECT * FROM film_text;
SELECT * FROM inventory;
SELECT * FROM language;
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM sales_by_film_category;
SELECT * FROM sales_by_store;
SELECT * FROM staff;
SELECT * FROM staff_list;
SELECT * FROM store;

-- 2.3.c

SELECT COUNT(*) AS rader FROM actor; --200
SELECT COUNT(*) AS rader FROM actor; -- 200
SELECT COUNT(*) AS rader FROM address; -- 603
SELECT COUNT(*) AS rader FROM category; -- 16
SELECT COUNT(*) AS rader FROM city; -- 600
SELECT COUNT(*) AS rader FROM country; -- 109
SELECT COUNT(*) AS rader FROM customer; -- 599
SELECT COUNT(*) AS rader FROM customer_list; -- 599
SELECT COUNT(*) AS rader FROM film; -- 1000
SELECT COUNT(*) AS rader FROM film_actor; -- 5462
SELECT COUNT(*) AS rader FROM film_category; -- 1000
SELECT COUNT(*) AS rader FROM film_list; -- 5462
SELECT COUNT(*) AS rader FROM film_text; -- 0
SELECT COUNT(*) AS rader FROM inventory; -- 4581
SELECT COUNT(*) AS rader FROM language; -- 6
SELECT COUNT(*) AS rader FROM payment; -- 16049
SELECT COUNT(*) AS rader FROM rental; -- 16044
SELECT COUNT(*) AS rader FROM sales_by_film_category; -- 16
SELECT COUNT(*) AS rader FROM sales_by_store; -- 2
SELECT COUNT(*) AS rader FROM staff; -- 2
SELECT COUNT(*) AS rader FROM staff_list; -- 2
SELECT COUNT(*) AS rader FROM store; -- 2

-- Antalet kolumner

SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'actor'; -- 4
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'address'; -- 8 
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'category'; -- 3
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'city'; -- 4
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'country'; -- 3
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'customer'; 
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'customer_list';
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'film'; -- 13
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'film_actor'; -- 3
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'film_category'; --3 
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'film_list'; -- 8
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'film_text'; -- 3
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'inventory'; -- 4
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'language'; -- 3
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'payment'; -- 7
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'rental'; -- 7
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'sales_by_film_category'; -- 2
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'sales_by_store'; -- 4
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'staff'; -- 11
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'staff_list'; -- 8
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'store';-- 4

-- 2.2.d.

SELECT * FROM film;

SELECT
	*
FROM
	actor
ORDER BY
	first_name;

SELECT * FROM film;

SELECT
	*
FROM
	actor
ORDER BY
	first_name
ASC;

SELECT
	*
FROM
	actor
ORDER BY
	last_name ASC;

-- räkna längden

SELECT
	MIN(length) AS Kortaste_filmen,
	ROUND(AVG(length), 0) AS medellängd,
	MEDIAN(length) AS median_längd,
	MAX(length) AS längsta_filmen
FROM
	film;

SELECT -- Ger utan alias. 
	MIN(length), 
	AVG(length), 
	MEDIAN(length), 
	MAX(length) 
FROM film;

ORDER BY length;

SELECT
	length 
FROM
	film
ORDER BY AVG(length);

-- E

SELECT * FROM rental;

SELECT MAX(rental_date) FROM rental;

DESC rental;

SELECT
	HOUR(rental_date) AS timme,
	MINUTE(rental_date) AS minut
FROM
	rental;

SELECT
	MINUTE(rental_date) AS minut
FROM
	rental;

-- Pövar annan variant.

SELECT strftime('%H', rental_date) AS hour, strftime('%M', rental_date) AS minute
GROUP BY
FROM rental;

--- Bara timmar

SELECT
	strftime('%H',
	rental_date) AS hour,
	COUNT(rental_date)
GROUP BY
	hour
FROM
	main.rental;

SELECT
    strftime('%H', rental_date) AS timme_på_dygnet,
    COUNT(rental_date) AS antal_tillfällen
FROM
    main.rental
GROUP BY
    timme_på_dygnet
ORDER BY 
	antal_tillfällen DESC;

SELECT * FROM rental;

-- Klockan 1500, 887 tillfällen. 

-- 2.2f

SELECT * FROM film;

SELECT COUNT(*) FROM film;

SELECT DISTINCT rating from film; -- får fram de olika kategorierna. 

SELECT
	 rating AS åldersgräns,
	 COUNT(rating)  as antal_tillfällen,
	 (COUNT(rating) * 100.0 / (SELECT COUNT(*) FROM film)) AS procent
FROM
	film
GROUP BY
	åldersgräns;

-- Svar: PG-13	223	22.3
--R	195	19.5
--G	178	17.8
--NC-17	210	21.0
--PG	194	19.4


-------------- 2.2.g

SELECT * FROM rental;
SELECT * FROM customer;



SELECT
    c.first_name,
    c.last_name,
    COUNT(r.customer_id) as top_kunder
FROM rental r
FULL JOIN customer c ON r.customer_id = c.customer_id
GROUP BY r.customer_id, c.first_name, c.last_name
ORDER BY top_kunder DESC
LIMIT 10;

-- svar:

--ELEANOR	HUNT	148	46
--KARL	SEAL	526	45
--MARCIA	DEAN	236	42
--CLARA	SHAW	144	42
--TAMMY	SANDERS	75	41
--WESLEY	BULL	469	40
--SUE	PETERS	197	40
--MARION	SNYDER	178	39
--RHONDA	KENNEDY	137	39
--TIM	CARY	468	39

-- 2.2. h) Retrieve a list of all customers and what films they have rented.


SELECT * FROM customer; -- customer_id, first_name, last_name
SELECT * FROM film; -- film_id, title
SELECT * FROM film_category;
SELECT * FROM inventory; -- film_id, inventory_id
SELECT * FROM rental; -- customer_id, rental_id, inventory_id
   
SELECT 
    c.first_name,
    c.last_name,
    f.title
FROM 
    customer c
INNER JOIN 
    rental r ON c.customer_id = r.customer_id
INNER JOIN 
    inventory i ON i.inventory_id = r.inventory_id
INNER JOIN 
    film f ON f.film_id = i.film_id
ORDER BY
 	c.first_name,
    c.last_name;
   
   -- 2.2   i) Make a more extensive EDA of your choice on the Sakila database.
   
   -- I)  Which is the most common genre by percentage
   

SELECT * FROM category; -- name, category_id
SELECT * FROM film; -- film_id, title
SELECT * FROM film_category; -- film_id, category_id

SELECT
	c.name AS filmgenre,
	(COUNT(c.name) * 100 / 1000) AS procent	-- Man gångrar förekomsten med 100 och delar sedan med antalet totala rader 
FROM 
	main.category c
INNER JOIN 
main.film_category f ON c.category_id = f.category_id
INNER JOIN 
main.film fi ON f.film_id = fi.film_id	
GROUP BY c.name
ORDER BY procent DESC;

-- II) Which actors have the most contributions among the different ratings. 


SELECT * FROM film; -- film_id, title, rating
SELECT * FROM actor; -- actor_id, first_name, last_name
SELECT * FROM film_actor; -- actor_id, film_id

SELECT
    first_name,
    last_name,
    rating,
    säkerhetsklass
FROM (
    SELECT
        a.first_name,
        a.last_name,
        f.rating,
        COUNT(f.rating) AS säkerhetsklass,
        ROW_NUMBER() OVER (PARTITION BY f.rating ORDER BY COUNT(f.rating) DESC) AS rank
    FROM 
        main.actor a
    INNER JOIN 
        main.film_actor fa ON a.actor_id = fa.actor_id
    INNER JOIN 
        main.film f ON fa.film_id = f.film_id
    GROUP BY 
        a.first_name, a.last_name, f.rating
) AS ranked_actors
WHERE rank = 1;







	










   
   

	

	

	
















