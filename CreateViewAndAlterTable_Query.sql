CREATE VIEW view_river_info AS
SELECT 
	CONCAT_WS(' ', 
	'The river', 
	river_name, 
	'flows into the', 
	outflow, 
	'and is', 
	"length", 
	'kilometers long.'		 
	) AS "River Information"
FROM rivers
ORDER BY river_name ASC;

SELECT * FROM view_river_info;

CREATE VIEW view_continents_countries_currencies_details AS
SELECT 
	CONCAT_WS(': ', cont.continent_name, cont.continent_code) AS "Continent Details",
	CONCAT_WS(' - ', ctr.country_name, ctr.capital, ctr.area_in_sq_km, 'km2') AS "Country Information",
	CONCAT(cur.description, ' ', '(', cur.currency_code, ')') AS "Currencies"
FROM continents AS cont,
	countries AS ctr,
	currencies AS cur
WHERE cont.continent_code = ctr.continent_code
	AND
	ctr.currency_code = cur.currency_code
ORDER BY "Country Information" ASC,
		"Currencies" ASC; 

SELECT * FROM view_continents_countries_currencies_details;

ALTER TABLE countries
ADD COLUMN capital_code CHAR(2);

UPDATE countries
SET capital_code = SUBSTRING(capital FROM 1 FOR 2)
RETURNING *;

































