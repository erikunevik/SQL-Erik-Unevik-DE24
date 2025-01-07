SELECT * FROM lars.sales_jan
UNION
SELECT * FROM lars.sales_feb;

SELECT * EXCLUDE(sale_date) FROM lars.sales_jan
UNION
SELECT * EXCLUDE(sale_date) FROM lars.sales_feb; -- De blir samma då det enda som skiljer är datumet

SELECT * EXCLUDE(sale_date) FROM lars.sales_jan
UNION ALL
SELECT * EXCLUDE(sale_date) FROM lars.sales_feb; -- keeps all of them

SELECT * FROM lars.sales_jan
INTERSECT
SELECT * FROM lars.sales_feb; -- whats in common, nothing

SELECT product_name, amount FROM lars.sales_jan
INTERSECT
SELECT product_name, amount FROM lars.sales_feb; -- Här selekterar vi vad som är gemensamt

SELECT product_name, amount FROM lars.sales_jan
EXCEPT
SELECT product_name, amount FROM lars.sales_feb; -- Man tar bort det som fanns i bägge

SELECT * EXCLUDE (sale_date) FROM lars.sales_jan
EXCEPT
SELECT * EXCLUDE (sale_date) FROM lars.sales_feb;

desc;

select * from lars.sales_feb;
select * from lars.sales_jan;

SELECT
	address,
	final_price,
	rooms
FROM main.hemnet_data
GROUP BY address, finalprice, rooms
ORDER BY rooms > 3;
	
	


Address, sold price number rooms fr people with 1, 2,3







