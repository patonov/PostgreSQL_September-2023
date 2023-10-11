select count(*) from bookings as b join customers as c on b.customer_id = c.customer_id where c.last_name = 'Hahn'

select 
	a.name,
	sum(booked_for)
from apartments as a join bookings as b on a.apartment_id = b.apartment_id
group by a.name
order by a.name;

select
	a.country,
	count(b.booking_id) as booking_count
from apartments as a join bookings as b on b.apartment_id = a.apartment_id
having b.booked_at >= '2021-05-18 07:52:09.904+03' and booked_at < '2021-09-17 19:48:02.147+03'
group by a.country
order by booking_count desc;

select * from bookings


















