-- 2A

CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.last_nameg (
    name VARCHAR(255),  -- Adjust column name and type as needed
    id INT,  -- This can be either actor_id or customer_id, depending on the table
    source VARCHAR(50)  -- A column to distinguish between 'actor' and 'customer'
);

INSERT INTO refined.last_nameg (name, id, source)
SELECT last_name, actor_id, 'actor'  -- Mark records as 'actor'
FROM main.actor
WHERE last_name LIKE 'G%'
UNION
SELECT last_name, customer_id, 'customer'  -- Mark records as 'customer'
FROM main.customer
WHERE last_name LIKE 'G%';

SELECT * FROM refined.last_nameg;

--- Lgga till firstname

ALTER TABLE refined.last_nameg
ADD COLUMN first_name VARCHAR(255);

UPDATE refined.last_nameg
SET first_name = (
    SELECT first_name
    FROM main.actor
    WHERE actor.actor_id = refined.last_nameg.id
    LIMIT 1
)
WHERE EXISTS ( --Where statement kan ev ej behövas 
    SELECT 1
    FROM main.actor
    WHERE actor.actor_id = refined.last_nameg.id
);

UPDATE refined.last_nameg
SET first_name = (
    SELECT first_name
    FROM main.customer
    WHERE customer.customer_id = refined.last_nameg.id
    LIMIT 1
)
WHERE EXISTS (   --Where statement kan ev ej behövas 
    SELECT 1
    FROM main.customer
    WHERE customer.customer_id = refined.last_nameg.id
);

SELECT * FROM refined.last_nameg;
