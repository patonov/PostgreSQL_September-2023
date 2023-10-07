select
	count(*)
from wizard_deposits

select
	sum(deposit_amount) as total_amount
from wizard_deposits

select 
	round(avg(magic_wand_size), 3) as average_magic_wand_size
from wizard_deposits

select 
	min(deposit_charge) as minimum_deposit_charge
from wizard_deposits

select 
	max(age) as maximum_age
from wizard_deposits

select 
	deposit_group, 
	sum(deposit_interest) as total_interest
from wizard_deposits
group by deposit_group
order by total_interest desc

select
	"magic_wand_creator",
	min("magic_wand_size") as minimum_wand_size
from wizard_deposits
group by magic_wand_creator
order by minimum_wand_size asc
limit 5

select
	"deposit_group",
	is_deposit_expired,
	floor(avg(deposit_interest))
from wizard_deposits
where "deposit_start_date" > '1985-01-01'
group by deposit_group, is_deposit_expired
order by "deposit_group" desc, is_deposit_expired

select 
	"last_name",
	count("notes") as notes_with_dumbledore
from wizard_deposits
where notes like '%Dumbledore%'
group by last_name;
	
create view view_wizard_deposits_with_expiration_date_before_1983_08_17 as
select
	concat_ws(' ', "first_name", "last_name") as "Wizard Name", 
	"deposit_start_date" as "Start Date", 
	"deposit_expiration_date" as "Expiration Date", 
	"deposit_amount" as "Amount"
from wizard_deposits 
where deposit_expiration_date <= '1983-08-17'
group by "Wizard Name", "Start Date", "Expiration Date", "Amount"
order by "Expiration Date"
	
select 
	"magic_wand_creator", 
	max("deposit_amount") as max_deposit_amount
from wizard_deposits
where deposit_amount not between 20000 and 40000
group by magic_wand_creator
order by max_deposit_amount desc
limit 3

select
	case
		when age between 0 and 10 then '[0-10]'
		when age between 11 and 20 then '[11-20]'
		when age between 21 and 30 then '[21-30]'
		when age between 31 and 40 then '[31-40]'
		when age between 41 and 50 then '[41-50]'
		when age between 51 and 60 then '[51-60]'
		when age > 60 then '[61+]'
	end AS "age_group",
	count(*) as count
from wizard_deposits
group by 
	case
		when age between 0 and 10 then '[0-10]'
		when age between 11 and 20 then '[11-20]'
		when age between 21 and 30 then '[21-30]'
		when age between 31 and 40 then '[31-40]'
		when age between 41 and 50 then '[41-50]'
		when age between 51 and 60 then '[51-60]'
		when age > 60 then '[61+]'
	end
order by age_group











































	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





































































