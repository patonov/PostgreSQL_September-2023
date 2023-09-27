SELECT 
	concat_ws(' ', first_name, last_name) AS Employee,
	department_id
FROM Employees
GROUP BY Employee, department_id
HAVING LEFT(concat_ws(' ', first_name, last_name), 1) = 'J'

SELECT
	job_title,
	COUNT(*)
FROM Employees
GROUP BY job_title



