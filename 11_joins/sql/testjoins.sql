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
	main.plants p
LEFT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id; -- Finns inte tillräckligt med blommor 
	
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


--inner

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
	
	

	
	



	
	

