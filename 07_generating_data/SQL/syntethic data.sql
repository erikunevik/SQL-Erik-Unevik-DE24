
-- Får 100 ID
SELECT UNNEST (generate_series(1, 100)) as id; -- id namnger columnen bara

SELECT RANDOM();

-- Randomiserar till 6 men sen + 1 så upptill 7 pga 1an, AS dice upp till 100, floor avrundar

SELECT FLOOR(RANDOM()*6+1) AS dice FROM generate_series(100); -- Fungerar för man avrundar alltid nedat


SELECT
	UNNEST (generate_series(100)) AS id,
	'student_' || id AS student,
	ROUND(RANDOM()*100) AS score;


SELECT
	id,
	'student_' || id AS student,
	 score,
	 CASE
		 WHEN score < 50 THEN 'F'
		 WHEN score < 75 THEN 'G'
		 ELSE 'VG'
	 END AS grade
FROM
	(
	SELECT
		UNNEST (generate_series(100)) AS id,
		ROUND(RANDOM()*100) AS score
	     );
	    
	    




