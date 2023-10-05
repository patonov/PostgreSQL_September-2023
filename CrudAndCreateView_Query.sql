select
	name,
	start_date,
	end_date
from projects
where start_date >= '2016-06-01 07:00:00' and end_date < '2023-06-04 00:00:00'
order by start_date asc

select 
	"number",
	"street" 
from addresses 
where "id" BETWEEN 50 and 100 OR "number" < 1000

select 
	"employee_id",
	"project_id" 
from employees_projects
where "employee_id" IN (200, 250) and "project_id" NOT IN (50, 100)

select
	"name", 
	"start_date" 
from projects 
where "name" in ('Mountain', 'Road', 'Touring')
limit 20

select 
	concat_ws(' ', "first_name", "last_name") as "full_name", 
	"job_title",
	"salary"
from employees 
where salary in (12500, 14000, 23600, 25000)
order by salary desc

select 
	id,
	"first_name", 
	"last_name"
from employees 
where "middle_name" is null
limit 3

insert into departments(department, manager_id) values
('Finance', 3),
('Information Services', 42),
('Document Control', 90),
('Quality Assurance', 274),
('Facilities and Maintenance', 218),
('Shipping and Receiving', 85),
('Executive', 109);


create table company_chart as
select 
	concat_ws(' ', "first_name", "last_name" ) as "Full Name",
	"job_title" as "Job Title",
	"department_id" as "Department ID", 
	"manager_id" as "Manager ID"
from employees;

update projects
set end_date = start_date + interval '5 months'
where end_date is null

update employees
set salary = salary + 1500, job_title = concat_ws(' ', 'Senior', job_title)
where hire_date between '1998-01-01' and '2000-01-05';

delete from addresses where "city_id" in (5, 17, 20, 30);

create view view_company_chart 
as
select 
	first_name || ' ' || last_name as "Full Name",
	job_title as "Job Title"
from employees
where manager_id = 184;

select * from view_company_chart;






































































