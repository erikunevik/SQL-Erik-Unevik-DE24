--Uppgift2.0.a

SELECT FLOOR(RANDOM()*6+1) AS dice FROM generate_series(10);



-- 2.0.b

SELECT
	dice,
    AVG((dice > 5)::numeric) AS getting_six,
    
FROM
    (
        SELECT
            FLOOR(RANDOM() * 6 + 1) AS dice
        FROM
            generate_series(10)
    ) AS subquery;
   
   -- För att få average
   
   
SELECT
    dice,
    ROUND(AVG((dice > 5)::numeric) OVER (), 2) AS getting_six -- Over för att få alla rader. 
FROM
    (
        SELECT
            FLOOR(RANDOM() * 6 + 1) AS dice
        FROM
            generate_series(10)
    ) AS subquery;
   

   -- 2.0.c.
   
   SELECT
    dice,
    ROUND(AVG((dice > 5)::numeric) OVER (), 2) AS getting_six -- Over för att få alla rader. 
FROM
    (
        SELECT
            FLOOR(RANDOM() * 6 + 1) AS dice
        FROM
            generate_series(100)
    ) AS subquery;
   
   
   --2.0.d--
   
   -- 1000 
   
      SELECT
    dice,
    ROUND(AVG((dice > 5)::numeric) OVER (), 2) AS getting_six -- Over för att få alla rader. 
FROM
    (
        SELECT
            FLOOR(RANDOM() * 6 + 1) AS dice
        FROM
            generate_series(1000)
    ) AS subquery;
   
   ---100000
   
         SELECT
    dice,
    ROUND(AVG((dice > 5)::numeric) OVER (), 2) AS getting_six -- Over för att få alla rader. 
FROM
    (
        SELECT
            FLOOR(RANDOM() * 6 + 1) AS dice
        FROM
            generate_series(100000)
    ) AS subquery;
   
   -- 1000000
   
            SELECT
    dice,
    ROUND(AVG((dice > 5)::numeric) OVER (), 2) AS getting_six -- Over för att få alla rader. 
FROM
    (
        SELECT
            FLOOR(RANDOM() * 6 + 1) AS dice
        FROM
            generate_series(1000000)
    ) AS subquery;
   
   --  2.0.d är 1 + 2 + 3 + 4 + 5 + 6 / 6 =3.5
   
   
   
   
   
   
   



	    






	    
	    