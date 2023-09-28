SELECT 
	department_id,
	COUNT(salary) AS employee_count
FROM 
	employees
GROUP BY department_id
ORDER BY department_id

SELECT 
	department_id,
	MIN(salary) AS min_salary
FROM 
	employees
GROUP BY department_id
HAVING MIN(salary) is not null
ORDER BY department_id

SELECT 
	department_id,
	cast(AVG(salary) as decimal(18, 2)) AS average_salary
FROM 
	employees
GROUP BY department_id
HAVING AVG(salary) is not null
ORDER BY department_id


SELECT 
	department_id,
	cast(SUM(salary) as decimal(18, 2)) AS total_salary
FROM 
	employees
GROUP BY department_id
HAVING SUM(salary) is not null
ORDER BY department_id





















