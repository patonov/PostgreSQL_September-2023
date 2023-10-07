select 
	left("first_name", 2) as "initials",
	count(left("first_name", 2)) as user_count
from users
group by left("first_name", 2)
order by user_count desc, initials asc

select 
	sum("booked_for") as total_value
from bookings
group by apartment_id
having apartment_id = 90

select 
	avg("multiplication") 
from bookings_calculation





