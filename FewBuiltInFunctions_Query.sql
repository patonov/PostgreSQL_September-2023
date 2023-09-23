SELECT SUBSTRING(description FROM 5 FOR LENGTH(description)) AS "substring" 
FROM currencies;

SELECT SUBSTRING("River Information", '([0-9]{1,4})') AS river_length FROM view_river_info;

SELECT REPLACE("mountain_range", 'a', '@') AS "replace_a", 
		REPLACE("mountain_range", 'A', '$') AS "replace_A"
FROM mountains;

SELECT
	"capital",
	TRANSLATE("capital", 'áãåçéíñóú', 'aaaceinou') AS "translated_name"
FROM countries;

SELECT 
	"continent_name",
	TRIM(LEADING FROM "continent_name") AS "trim" 
FROM continents;

SELECT 
	"continent_name",
	TRIM(TRAILING FROM "continent_name") AS "trim" 
FROM continents;

SELECT 
	LTRIM("peak_name", 'M') AS "Left Trim",
	RTRIM("peak_name", 'm') AS "Right Trim" 
FROM peaks

SELECT 
	CONCAT_WS(' ', m.mountain_range, p.peak_name) AS "Mountain Information",
	CHAR_LENGTH(CONCAT_WS(' ', m.mountain_range, p.peak_name)) AS "Characters Length",
	BIT_LENGTH(CONCAT_WS(' ', m.mountain_range, p.peak_name)) AS "Bits of a String"
FROM 
	mountains AS m,
	peaks AS p
WHERE m.id = p.mountain_id

SELECT 
	"population",
	LENGTH(CAST(population AS VARCHAR))
FROM countries

SELECT 
	peak_name,
	LEFT(peak_name, 4) AS "Positive Left",
	LEFT(peak_name, -4) AS "Negative Left"
FROM peaks

SELECT 
	peak_name,
	RIGHT(peak_name, 4) AS "Positive Right",
	RIGHT(peak_name, -4) AS "Negative Right"
FROM peaks



















































