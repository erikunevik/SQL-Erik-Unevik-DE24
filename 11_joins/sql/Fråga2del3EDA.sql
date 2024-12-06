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
SELECT COUNT(*) AS antal_kolumner FROM information_schema.columns WHERE table_name = 'store'; -- 4





