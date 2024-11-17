CREATE TABLE IF NOT EXISTS Försäljningar AS (
SELECT
	*
FROM
	read_csv_auto('hemnet_data_clean.csv'));
