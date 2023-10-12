select count(*) as countries_without_mountains
from
(select * from countries c left join mountains_countries mc on c.country_code = mc.country_code
where mc.mountain_id is null) as tralala;

SELECT 
	tablename,
    indexname,
    indexdef
FROM pg_indexes
WHERE schemaname = 'public'
ORDER BY tablename, indexname;