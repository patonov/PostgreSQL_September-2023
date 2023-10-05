create view view_addresses as
select
	concat(e.first_name, ' ', e.last_name) as "full name",
	e.department_id,
	a.number || ' ' || a.street as "address"
from employees as e,
addresses as a
where e.address_id = a.id
order by address asc


alter view view_addresses rename to view_employee_addresses_info;

drop view view_company_chart;

update projects
set name = upper("name");

create view view_initials as
	select 
	left("first_name", 2) as initial, 
	"last_name" 
	from employees
	order by "last_name";

select 
	"name", 
	"start_date" 
from projects
where "name" like 'MOUNT%'
order by "id";


















