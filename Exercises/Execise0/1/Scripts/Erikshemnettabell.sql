Desc;

SELECT * FROM Försäljningar;

-- B Sortera på Segeltorp

SELECT
	*
FROM
	Försäljningar
WHERE
	commune LIKE '%Segeltorp%'
ORDER BY
	commune;

-- C Rader i tabellen

SELECT COUNT(*) FROM Försäljningar;

-- D variabeltyprt

DESCRIBE Försäljningar;

--E 5 dyraste

SELECT
	*
FROM
	Försäljningar
ORDER BY
	final_price DESC
LIMIT 5;

-- F Billigaste

SELECT
	*
FROM
	Försäljningar
ORDER BY
	final_price ASC
LIMIT 5;

-- G Mean, median, max

SELECT
	MAX(final_price) AS max_price,
	AVG(final_price) AS average_price,
	MEDIAN(final_price) AS median_price
FROM
	Försäljningar;

-- H minimum, mean, median, maximum per bostadsområde

SELECT
	MAX(price_per_area) AS max_pricearera,
	AVG(price_per_area) AS average_pricearea,
	MEDIAN(price_per_area) AS median_pricearea,
	MIN(price_per_area) AS min_pricearea
FROM
	Försäljningar;

-- I Hur många unika kommuner finns det i datasetet

SELECT 
    TRIM(SUBSTR(commune, INSTR(commune, ',') + 1)) AS type_commune,
    COUNT(*) AS count
FROM Försäljningar
GROUP BY type_commune
ORDER BY count DESC;

SELECT * FROM Försäljningar;

-- J ANtal lägnehter ovan 10 miljoner sek

SELECT
	100.0 * SUM(CASE WHEN final_price > 10000000 THEN 1 ELSE 0 END) / COUNT(*) AS procent_over_10_millions
FROM
	Försäljningar;

--K Jag vill lägga till min nya data

-- Jag behver då uppdatera:


UPDATE Försäljningar
SET procent_over_10_millions = 
    CASE 
        WHEN final_price > 10000000 THEN 1  
    END;


SELECT DISTINCT procent_over_10_millions
FROM Försäljningar;

SELECT * FROM Försäljningar;

-- Ta bort 10_millioner

ALTER TABLE Försäljningar DROP COLUMN procent_over_10_millioner;

SELECT * FROM Försäljningar;

-- Lägga till max och min, medan, average

ALTER TABLE Försäljningar
ADD COLUMN max_pricearea DECIMAL;

ALTER TABLE Försäljningar
ADD COLUMN average_pricearea DECIMAL;

ALTER TABLE Försäljningar
ADD COLUMN median_pricearea DECIMAL;

ALTER TABLE Försäljningar
ADD COLUMN min_pricearea DECIMAL;

-- Uppatera sedan dessa kolumner

UPDATE Försäljningar
SET 
	max_pricearea = (SELECT MAX(price_per_area) FROM Försäljningar), 
	average_pricearea = (SELECT AVG(price_per_area) FROM Försäljningar),
    median_pricearea = (SELECT MEDIAN(price_per_area) FROM Försäljningar),
    min_pricearea = (SELECT MIN(price_per_area) FROM Försäljningar);
   
   
SELECT * FROM Försäljningar;


























	
