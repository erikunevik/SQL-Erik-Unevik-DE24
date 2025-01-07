
-- Skapa tabeller

CREATE TABLE IF NOT EXISTS main.products (
    product_id INTEGER,
    product_name VARCHAR(500),
    category VARCHAR(500),
    supplier VARCHAR(500),
    price INTEGER
);

CREATE TABLE IF NOT EXISTS main.sales (
    sale_id INTEGER,
    product_id INTEGER,
    sale_date DATE,
    quantity INTEGER,
    total_amount DOUBLE
);

DROP TABLE main.sales;

desc;

-- Stoppa in värden

INSERT 
	INTO main.products(product_id, product_name, category, supplier, price)
VALUES
(1, 'Monitor', 'Electronics', 'TechCorp', 300.00),
(2, 'Keyboard', 'Accessories', 'InputMasters', 100.00),
(3, 'Mouse', 'Accessories', 'InputMasters', 50.00),
(4, 'laptop', 'Electronics', 'GigaTech', 1000.00),
(5, 'Headphones', 'Audio', 'SoundPro', 150.00);

INSERT 
	INTO main.sales(sale_id, product_id, sale_date, quantity, total_amount)
VALUES
(2, 2, '2024-02-11', 5, 500.00),
(4, 4, '2024-02-20', 1, 1000.00),
(5, 5, '2024-02-21', 4, 600.00);

UPDATE main.sales
SET sale_date = CAST(sale_date AS DATE);

CREATE SCHEMA

SELECT COUNT(*) FROM main.products;


CREATE SCHEMA IF NOT EXISTS crypto;

SELECT * FROM information_schema.SCHEMATA;

CREATE TABLE IF NOT EXISTS crypto.crypto (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    price INTEGER,
    price_worthy BOOLEAN
);


DROP TABLE crypto.crypto;

INSERT 
	INTO crypto.crypto(id, name, price, price_worthy)
VALUES
	(1, 'Ethereum', 4700, TRUE),
	(2, 'Bitcoin', 97000, FALSE),
	(3, 'Solana', 270, TRUE);

SELECT * FROM crypto.crypto;

DELETE FROM crypto.crypto WHERE id = 1;

UPDATE 	crypto.crypto 
SET price_worthy = CASE 
	WHEN price_worthy = FALSE THEN 'Not price worthy'
	ELSE 'Priceworthy'
END;

UPDATE crypto.crypto
SET price_worthy = CASE 
    WHEN price_worthy = FALSE THEN 'Not price worthy'
    ELSE 'Priceworthy'
END;

ALTER TABLE crypto.crypto
ADD COLUMN desc_price VARCHAR(50);

UPDATE crypto.crypto
SET desc_price = CASE 
	WHEN price_worthy = FALSE THEN 'not valuable'
	ELSE 'valuable'
END;

SELECT * FROM crypto.crypto;


SELECT * FROM main.sales;

SELECT * FROM main.products;


-- Left joina för att förstå syntaxen.

SELECT 
	p.product_name,
	p.category,
	p.supplier,
	s.total_amount
FROM main.products p
INNER JOIN main.sales s ON
p.product_id = s.product_id;

--- Variant två. 

SELECT 
	p.product_name,
	p.category,
	p.supplier,
	s.total_amount,
	s.sale_date
FROM main.products p
LEFT JOIN main.sales s ON
p.product_id = s.product_id;

SELECT 
	p.product_name,
	p.category,
	p.supplier,
	s.total_amount,
	s.sale_date
FROM main.products p
FULL JOIN main.sales s ON
p.product_id = s.product_id;

-- 

SELECT *

FROM main.products p
RIGHT JOIN main.sales s ON
p.product_id = s.product_id;


-- tentafrågan

 SELECT 
    * 
FROM 
    main.products p 
LEFT JOIN main.sales s ON  
    p.product_id = s.product_id; 
   
   
 SELECT 
	p.product_name,
	p.category,
	p.supplier,
	s.total_amount
FROM main.sales s
RIGHT JOIN main.products p ON
p.product_id = s.product_id;

SELECT 
	customer_id, COUNT(*) AS total_orders
FROM main.orders
GROUP BY customer_id,
ORDER BY DESC;

SELECT 
	employee_ID,
	employment_date
FROM main.employee
WHERE employment_date > 01-01-2020
GROUP BY emplyee_ID

SELECT product_name 
FROM inventory 
WHERE stock < 10 
LIMIT 5;

Select not_sold from products
union	
select not_sold from sales;

or 

SELECT 

s.not_sold

From main.sales s 
INNER JOIN main.products p ON
s.id = p.id; 

SELECT 

MAX(salary) 

FROM main.salaries

WHERE salary_level = 'IT';


SELECT

AVG(salary) AS sal_perdepartment,
department 

FROM main.salaries

GROUP BY department
ORDER BY avg_salary desc;

UPDATE salaries
SET salary = salary * 1.5 
WHERE department = 'IT_department' AND salary < 3000;

SELECT 43;

SELECT 44 AS det_du;

SELECT * FROM main.sales;
	
SELECT * FROM main.products;

SELECT 
	category,
	price
FROM main.products p 
GROUP BY category 
ORDER BY price;

DROP TABLE main.products;





   		
   








	


