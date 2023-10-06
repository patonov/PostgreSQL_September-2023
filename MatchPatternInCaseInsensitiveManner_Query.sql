create table bookings_calculation as 
select 
	booked_for
from bookings
where apartment_id = 93;

alter table bookings_calculation
add column multiplication NUMERIC;

alter table bookings_calculation
add column modulo NUMERIC;

update bookings_calculation
set multiplication = booked_for * 50;

update bookings_calculation
set modulo = booked_for % 50;

select * from bookings_calculation

select 
	"latitude",
	round(latitude, 2),
	trunc(latitude, 2)
from apartments;

select 
	"longitude",
	abs(longitude)
from apartments;

alter table bookings
add column billing_day TIMESTAMPTZ default current_timestamp;

select
	to_char(billing_day, 'DD "Day" MM "Month" YYYY "Year" HH24:MI:SS') as "Billing Day"
from bookings;

select
	extract(YEAR from booked_at) as "YEAR",
	extract(MONTH from booked_at) as "MONTH",
	extract(DAY from booked_at) as "DAY",
	extract(HOUR from booked_at) as "HOUR",
	extract(MINUTE from booked_at) as "MINUTE",
	ceiling(extract(SECOND from booked_at)) as "SECOND"
from bookings

select 
	"companion_full_name", 
	"email"
from users
where "companion_full_name" ilike '%aNd%' and "email" not ilike '%@gmail' 





















































































