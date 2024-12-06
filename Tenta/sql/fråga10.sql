
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
RIGHT JOIN main.sales s ON
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






	


