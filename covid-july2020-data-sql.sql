
/* CREATE DATABASE covid;*/

USE covid;
SELECT * FROM [julydata];
SELECT COUNT(*) AS '# of rows' FROM julydata;

SELECT
	location,
	iso_code,
	ROUND(
		((MAX(total_cases)/MAX(population))*100),
		2
		) AS percent_infected
FROM julydata
GROUP BY percent_infected, location, iso_code;

/* ALTER TABLE julydata
ADD
	percent_infected INT; */

