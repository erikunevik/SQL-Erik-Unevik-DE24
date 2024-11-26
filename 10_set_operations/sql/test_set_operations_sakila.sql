SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	 c.first_name LIKE 'A%'
UNION --- with union we delete all the duplicates
SELECT
	'Actor',
	a.first_name,
	a.last_name AS type,
FROM
	main.actor a
WHERE a.first_name LIKE 'A%';


--- No we do itnersection

SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	 c.first_name LIKE 'A%'
INTERSECT -- we get all the overlapping names, 0
SELECT
	'Actor',
	a.first_name,
	a.last_name AS type,
FROM
	main.actor a
WHERE a.first_name LIKE 'A%';

--- New filtration


SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
INTERSECT -- we get all the overlapping names, one case
SELECT
	a.first_name,
	a.last_name AS type,
FROM
	main.actor a;


SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%'
UNION ALL
SELECT
	a.first_name,
	a.last_name
FROM
	main.customer a
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%';


--- union, we remove the duplicates


SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%'
UNION 
SELECT
	a.first_name,
	a.last_name
FROM
	main.customer a
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%';


