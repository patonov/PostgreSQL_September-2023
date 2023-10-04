SELECT * FROM cities ORDER BY id ASC

SELECT 
	CONCAT(name, ' ', state) as "Cities Information",
	area AS "Area (km2)"
FROM cities

SELECT DISTINCT
	name,
	area AS "Area (km2)"
FROM cities
ORDER BY name DESC

SELECT
	"id" AS "ID", 
	CONCAT_WS(' ', "first_name", "last_name") AS "Full Name", 
	"job_title" AS "Job Title"
FROM Employees
ORDER BY "first_name" ASC
LIMIT 50

SELECT
	"id" AS "ID", 
	CONCAT_WS(' ', "first_name", "middle_name", "last_name") AS "Full Name", 
	"hire_date" AS "Hire Date"
FROM Employees
ORDER BY "hire_date" ASC
OFFSET 9

SELECT 
	"id", 
	CONCAT_WS(' ', "number", "street") AS "address",
	"city_id" 
from "addresses" 
WHERE "id" >= 20


SELECT 
	CONCAT_WS(' ', "number", "street") AS "address",
	"city_id" 
from "addresses" 
WHERE "city_id" > 0 AND "city_id" % 2 = 0
ORDER BY "city_id" ASC

SELECT * FROM projects


































































