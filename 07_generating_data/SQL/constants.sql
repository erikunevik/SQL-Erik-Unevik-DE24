SELECT 42 AS meaning_of_life;

SELECT 42;

VALUES (1), (2), (3);


CREATE TABLE IF NOT EXISTS people_records AS (
SELECT
	*
FROM
   (
VALUES
(1,'Johan'),
(2, 'Johanna'),
(3, 'Mustafa')) AS people(id, name)); --id name är labels


-- Det är syntetiskt data, ej sparad någonstans, men det skapas ovan iCreate table 


desc;










