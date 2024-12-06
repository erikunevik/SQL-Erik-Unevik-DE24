INSTALL sqlite;
LOAD sqlite;

call sqlite_attach('C:/Users/eriku/Desktop/DataenginerSTI2024-2026/SQL30YP/Github/SQL-Erik-Unevik-DE24/11_joins/data/sqlite-sakila2.db');

SELECT * FROM main.film;



-- Which actor played which film_id?

SELECT * FROM main.film_actor fa;
SELECT * FROM main.actor a;

SELECT 
	a.actor_id,
	a.first_name,
	a.last_name,
	fa.film_id

FROM main.actor a
LEFT JOIN main.film_actor fa ON
fa.actor_id = a.actor_id; 

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

--- Denna ser mkt bättre ut

SELECT
	a.first_name,
	a.last_name,
	f.title
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	fa.actor_id = a.actor_id
LEFT JOIN main.film f ON
	f.film_id = fa.film_id; 

-- Prövar full join.inner join mm. 

SELECT
	a.first_name,
	a.last_name,
	f.title
FROM
	main.actor a
RIGHT JOIN main.film_actor fa ON
	fa.actor_id = a.actor_id
RIGHT JOIN main.film f ON
	f.film_id = fa.film_id; 


-- Prövar egen


---------- Film and category

SELECT * FROM main.category; -- genre cat id 
SELECT * FROM main.film_category; -- DÄr har man bägge idn 
SELECT * FROM main.film; -- title  film id 


SELECT
    f.title,
    c.name AS 'genre'
FROM
    main.film_category fc -- Man tar från denna för den har bägge idn
INNER JOIN main.category c ON
    fc.category_id = c.category_id
INNER JOIN main.film f ON
    fc.film_id = f.film_id;
   
   
----
   
   DESC;
  

-- Får ut en hel del ID
  
  
  --- Staff, address, city, country. Can I join this?
  
    SELECT * FROM main.address a ; -- add id, address, city id
   SELECT * FROM main.city c ;  -- city id, city, country id
SELECT * FROM main.country c ; -- country id, country
SELECt* FROM main.staff; -- namn, address id, 

  

 
 SELECT 
    s.first_name,
    s.last_name,
    a.address,
    c.city,
    cty.country
FROM 
    main.staff s
FULL JOIN main.address a ON 
    s.address_id = a.address_id -- staff ger adress a från staff
FULL JOIN main.city c ON -- adress a ger till city c
    a.city_id = c.city_id
FULL JOIN main.country cty ON --ity ser ger till country 
    c.country_id = cty.country_id;
   
   ---- Which actors played in which movies
   
SELECT * FROM main.film_actor fa;
SELECT * FROM main.film;
SELECT * FROM main.actor a;
SELECT * FROM main.film;



desc;
   
   SELECT 
   		a.first_name,
   		a.last_name,
   		f.title AS film_title
   FROM
   		main.film f
   LEFT JOIN main.film_actor fa ON
   		f.film_id = fa.film_id 
   LEFT JOIN main.actor a ON
   		a.actor_id = fa.actor_id ;
   	
   	
   	
   
   
   
   SELECT * FROM main.film;

 
 
  
  
 
 
 
 
 













