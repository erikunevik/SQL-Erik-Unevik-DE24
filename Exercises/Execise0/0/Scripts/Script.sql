-- Uppgift 0, skapa en tabell

CREATE TABLE Kursinnehåll (
    Vecka INT PRIMARY KEY,
    Innehåll VARCHAR(100),
    Föreläsningar VARCHAR(100)
);


INSERT INTO Kursinnehåll (Vecka, Innehåll, Föreläsningar) VALUES
(46, 'intro, query, ingest csv, CLI, dbeaver, table, select', '00-04'),
(47, 'filtering, CRUD, conditionals, sorting, functions, grouping', '05-08'),
(48, 'grouping, strings, regexp, set operations, performing joins, querying multiple tables', '09-11'),
(49, 'window functions, CTEs, connect duckdb to Python, data security, SQL injection', '12-14'),
(50, 'duckdb tips and tricks, repetition', '15-16'),
(51, 'exam', 'Inga föreläsningar');


SELECT * FROM Kursinnehåll;

-- Select funktion

SELECT DISTINCT Vecka FROM Kursinnehåll;

-- Räkna funktion

SELECT COUNT(Vecka) AS veckocount FROM Kursinnehåll;

-- Se variabeltyp

PRAGMA table_info('Kursinnehåll');

-- Ta bort

DELETE FROM Kursinnehåll
WHERE Vecka = 46;

--Lägga till åter

INSERT INTO Kursinnehåll (Vecka, Innehåll, Föreläsningar)
VALUES (46, 'intro, query, ingest csv, CLI, dbeaver, table, select', '00-04');

-- Sortera till ascending

SELECT
	*
FROM
	Kursinnehåll
ORDER BY
	Vecka Asc;

---- Gör någon egen analys

SELECT * FROM Kursinnehåll
WHERE Vecka = 51;

-- Räkna ord

SELECT (LENGTH(Innehåll))
FROM Kursinnehåll
WHERE VECKA = 47;










