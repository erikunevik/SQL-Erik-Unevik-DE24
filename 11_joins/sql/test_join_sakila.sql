INSTALL sqlite;
LOAD sqlite;

call sqlite_attach('C:/Users/eriku/Desktop/DataenginerSTI2024-2026/SQL30YP/Github/SQL-Erik-Unevik-DE24/11_joins/data/sqlite-sakila2.db');


SELECT * FROM main.film_actor fa;
SELECT * FROM main.film;
SELECT * FROM main.actor a;

-- Which actor played which film_id?

SELECT 
	a.first_name,
	a.last_name,
	fa.film_id

FROM main.actor a
LEFT JOIN main.film_actor fa ON
a.actor_id;

-- Which actor played which film title?

SELECT 
	a.first_name,
	a.last_name,
	fa.film_id
	f.title

FROM main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id 
LEFT JOIN main.film f ON f.film_id = fa.film_id ; -- Varför får jag 1000 kolumner?

---------- Film and category



SELECT
    f.title,
    c.name AS 'genre'
FROM
    main.film_category fc
INNER JOIN main.category c ON
    fc.category_id = c.category_id
INNER JOIN main.film f ON
    fc.film_id = f.film_id;
   
   
----
   
   DESC;
  
  SELECT * FROM main.address a ;
 
  SELECT * FROM main.city c ;

SELECT * FROM main.country c ;

-- Får ut en hel del ID
  
  
  --- Staff, address, city, country. Can I join this?
  

 
 SELECT 
    s.first_name,
    s.last_name,
    a.address,
    c.city,
    cty.country
FROM 
    main.staff s
LEFT JOIN main.address a ON 
    s.address_id = a.address_id
LEFT JOIN main.city c ON
    a.city_id = c.city_id
LEFT JOIN main.country cty ON
    c.country_id = cty.country_id;

 
 
  
  
 
 
 
 
 













