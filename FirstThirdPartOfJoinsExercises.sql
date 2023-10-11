select 
	concat_ws(' ', a.address, a.address_2) as "apartment_address",
	b.booked_for as nights
from "apartments" as a
join "bookings" as b on a.booking_id = b.booking_id
order by a.apartment_id;

select 
	a.name, 
	a.country, 
	cast(b.booked_at as date)
from apartments as a
left join bookings as b on a.booking_id = b.booking_id
limit 10;

select 
	b.booking_id,
	cast(b.starts_at as date),
	b.apartment_id,
	concat_ws(' ', c.first_name, c.last_name) as customer_name
from bookings as b right join customers as c on c.customer_id = b.customer_id
order by customer_name asc
limit 10;

select 
	b.booking_id, 
	a.name as apartment_owner,
	a.apartment_id,
	concat_ws(' ', c.first_name, c.last_name) as customer_name
from bookings as b 
full join apartments as a on b.booking_id = a.booking_id
full join customers as c on c.customer_id = b.customer_id
order by b.booking_id asc, a.name, customer_name;

select * from bookings

select 
	b.booking_id, 
	c.first_name 
from bookings as b 
cross join customers as c 
order by c.first_name;

select 
	b.booking_id,
	b.apartment_id,
	c.companion_full_name 
from bookings as b join customers as c on b.customer_id = c.customer_id
where b.apartment_id is null;

select 
	b.apartment_id, 
	b.booked_for,
	c.first_name, 
	c.country 
from bookings as b join customers as c on b.customer_id = c.customer_id
where c.job_type = 'Lead'





















































































































































