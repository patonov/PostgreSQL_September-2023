UPDATE countries
SET iso_code = UPPER(LEFT(country_name, 3))
WHERE iso_code IS NULL;

UPDATE countries
SET country_code = LOWER(REVERSE(country_code));

SELECT CONCAT_WS(' ', elevation, CONCAT(REPEAT('-', 3),'>>'), peak_name) AS "Elevation --->> Peak Name" 
FROM peaks
WHERE elevation >= 4884;