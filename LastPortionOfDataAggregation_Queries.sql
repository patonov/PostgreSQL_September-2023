select 
	job_title,
	case
		when avg(salary) > 45800 then 'Good'
		when avg(salary) between 27500 and 45800 then 'Medium'
		when avg(salary) < 27500 then 'Need Improvement'
	end as category
from employees
group by job_title
order by category, job_title;

select
	project_name,
	case
		when "start_date" is null and "end_date" is null then 'Ready for development'
		when "start_date" is not null and "end_date" is null then 'In Progress'
		else 'Done'
	end
from projects
where project_name like '%Mountain%';

select 
	department_id,
	count(*) as num_employees,
	case
		when avg(salary) > 50000 then 'Above average'
		when avg(salary) <= 50000 then 'Below average'
	end as salary_level
from employees
group by department_id
having avg(salary) > 30000
order by department_id

create view view_performance_rating as 
select 
	first_name, 
	last_name, 
	job_title, 
	salary, 
	department_id,
	case
		when salary >= 25000 then
								case
									when job_title like 'Senior%' then 'High-performing Senior'
									when job_title not like 'Senior%' then 'High-performing Employee'
								end
		else 'Average-performing'
	end as performance_rating
from employees;

create table employees_projects(
	id serial not null primary key,
	employee_id int not null references employees(id), 
	project_id int not null references projects(id)
);

select *
from departments as d 
join employees as e on e.department_id = d.id;

select *
from departments as d, employees as e 
where e.department_id = d.id;












































































































