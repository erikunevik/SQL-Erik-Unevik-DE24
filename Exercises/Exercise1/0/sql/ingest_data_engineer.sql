CREATE TABLE 
    IF NOT EXISTS data_engineer AS (
SELECT 
    * 
FROM 
    read_csv_auto('data/salariesuppgift1första.csv')
    
);