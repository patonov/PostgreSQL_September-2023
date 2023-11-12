CREATE INDEX ix_lower_first_name ON employees (lower(first_name));

select first_name from employees

select last_name from employees