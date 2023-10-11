select 
	mc.country_code, 
	m.mountain_range, 
	p.peak_name, 
	p.elevation 
from peaks as p 
join mountains as m on p.mountain_id = m.id
join mountains_countries as mc on m.id = mc.mountain_id
where p.elevation > 2835 and mc.country_code = 'BG'
order by p.elevation desc

select 
	mc.country_code, 
	count(m.mountain_range) as mountain_range_count
from mountains as m 
join mountains_countries as mc on m.id = mc.mountain_id
where mc.country_code in ('US', 'RU', 'BG')
group by mc.country_code
order by mountain_range_count desc

select * from countries

select 
	c.country_name as country_name, 
	r.river_name 
from countries as c left join countries_rivers as cr on c.country_code = cr.country_code
left join rivers as r on cr.river_id = r.id
where c.continent_code = 'AF'
order by country_name
limit 5;

select min(cont_avgs.average) as min_average_area from
(select
	c.continent_code,
	avg(area_in_sq_km) as average
from countries as c 
group by c.continent_code) as cont_avgs;













































































