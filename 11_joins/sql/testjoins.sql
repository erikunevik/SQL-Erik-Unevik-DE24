SELECT * FROM main.plants p ; 

SELECT * FROM main.plant_care pc ; 

--- left

SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule, -- Dessa gör att det ser bättre ut. 
	pc.sunlight
FROM
	main.plants p -- den vi styr från
LEFT JOIN main.plant_care pc ON 
	p.plant_id = pc.plant_id; -- Finns inte tillräckligt med blommor, vänster tabell är from klassen, ON är vad de ska joina på 
	
	--- Prövar byta plats på tabellerna. 
	
	SELECT
	pc.plant_id, -- det är den som styr, om p hade stått däruppe så hade den blivit right. 
	p.plant_name,
	pc.water_schedule, -- Dessa gör att det ser bättre ut. 
	pc.sunlight,
	p.type
	
FROM
	main.plant_care pc -- den vi styr från
LEFT JOIN main.plants p ON 
	p.plant_id = pc.plant_id; -- Finns inte tillräckligt med blommor, vänster tabell är from klassen, ON är vad de ska joina på 

	
	SELECT
*
FROM
	main.plants p
LEFT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id; -- origial


-- right 
	
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule, -- Dessa gör att det ser bättre ut. 
	pc.sunlight
FROM
	main.plants p
RIGHT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id; 	


--inner, vad det är exakt värde på. 

SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule, -- Dessa gör att det ser bättre ut. 
	pc.sunlight
FROM
	main.plants p
INNER JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id; --Intersection of two tables
	
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule, -- Dessa gör att det ser bättre ut. 
	pc.sunlight
FROM
	main.plants p
FULL JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id; -- Bästa varianten enl mig
	
	

	
	



	
	

