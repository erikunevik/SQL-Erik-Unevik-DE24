DESC;

DESC actor; -- first_name
DESC customer; -- first_name
DESC city;


SELECT *
FROM main.actor
WHERE last_name LIKE 'G%'; 

SELECT

last_name AS last_nameg,
FROM main.actor
WHERE last_name LIKE 'G%';


SELECT *
FROM main.customer
WHERE last_name LIKE 'G%'

---- Uppgift a

CREATE TABLE IF NOT EXISTS last_nameg (
name, BIGINIT

SELECT *
FROM main.actor
WHERE last_name LIKE 'G%'
UNION
SELECT *
FROM main.customer
WHERE last_name LIKE 'G%'

);

CREATE TABLE IF NOT EXISTS last_nameg (
    name VARCHAR(255),  -- Adjust column name and type as needed
    actor_id INT
);

INSERT INTO last_nameg (name, actor_id)
SELECT last_name, actor_id
FROM main.actor
WHERE last_name LIKE 'G%'
UNION
SELECT last_name, customer_id  -- Make sure the columns align with actor_id in data type
FROM main.customer
WHERE last_name LIKE 'G%';

SELECT * FROM last_nameg;

---- B

SELECT first_name
FROM main.actor
WHERE first_name like '%ANN%'
UNION
SELECT first_name
FROM main.customer
WHERE first_name like '%ANN%';

-- Svaret är 14 på B. 

c---- 

DESC main.city;

SELECT * FROM main.customer;
SELECT * FROM main.city;
SELECT * FROM main.country;
SELECT * FROM main.store;
SELECT * FROM main.customer_list;

SELECT COUNT(*) customder_id FROM main.customer;
SELECT COUNT(*) city_id FROM main.city;


--SELECT country_id   FROM main.city LIKE '81;

SELECT city, COUNT(*)
FROM main.information_schema
GROUP BY city;

SELECT id, city, COUNT(*)
FROM main.customer_list
GROUP BY id;

SELECT COUNT(*) city  FROM main.customer;

SELECT city, COUNT(*)
FROM main.customer_list
GROUP BY city;

SELECT city, country, COUNT(id) AS count
FROM main.customer_list
GROUP BY city, country;

--- Svar de bor i 597 städer, bara två gemensamma städer - Aurora och London

SELECT country, COUNT(id) AS count
FROM main.customer_list
GROUP BY country
ORDER by COUNT DESC;

-- Svar, de kommer från 108 länder, top 3 Indien, Kina och USA. 

--- D 


SELECT 
  CONCAT(SUBSTRING(name, 1, 1), --- concat slår ihop, substring ens specifiercad del av ett od, 1 den första, 1 den andra
         SUBSTRING(SUBSTRING(name, POSITION(' ' IN name) + 1), 1, 1)) AS first_letters 
FROM main.customer_list; 


SELECT 
  CONCAT(SUBSTRING(name, 1, 1), 
         SUBSTRING(SUBSTRING(name, POSITION(' ' IN name) + 1), 1, 1)) AS first_letters, 
  COUNT(*) AS first_letters_count
FROM main.customer_list
WHERE CONCAT(SUBSTRING(name, 1, 1), 
             SUBSTRING(SUBSTRING(name, POSITION(' ' IN name) + 1), 1, 1)) LIKE 'JD'
GROUP BY first_letters;


-- För att få ut ID

SELECT 
  id,
  CONCAT(SUBSTRING(name, 1, 1), 
         SUBSTRING(SUBSTRING(name, POSITION(' ' IN name) + 1), 1, 1)) AS first_letters
FROM main.customer_list
WHERE CONCAT(SUBSTRING(name, 1, 1), 
             SUBSTRING(SUBSTRING(name, POSITION(' ' IN name) + 1), 1, 1)) LIKE 'JD';
            
SELECT DISTINCT WHERE id = 6 FROM main.customer_list;

SELECT DISTINCT id
FROM main.customer_list
WHERE id = 6;

--- fel

SELECT city, country
FROM main.customer_list
WHERE id = 6;

--- Svar, från Laredo i USA. 





	






















