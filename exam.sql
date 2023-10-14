insert into coaches(first_name, last_name, salary, coach_level)
select 
	first_name,	
	last_name,	
	salary * 2,
	length(first_name)
from players
where hire_date < '2013-12-13 07:18:46' 
	
update coaches
set salary = salary * coach_level
where first_name like 'C%'

delete from players
where hire_date < '2013-12-13 07:18:46' 

select 
	concat_ws(' ', "first_name", "last_name") as full_name, 
	"age", 
	"hire_date"
from players
where "first_name" like 'M%'
order by age desc, first_name asc;


select 
	p.id,
	concat_ws(' ', p.first_name, p.last_name) as full_name, 
	p.age,
	p.position,
	p.salary,
	sk.pace,
	sk.shooting
from players p
join skills_data sk on p.skills_data_id = sk.id 
where team_id is null and position = 'A' and pace + shooting > 130;

select
	p.team_id as team_id,
	t.name as team_name,
	count(p.id) as player_count,
	fan_base
from teams t join players p on p.team_id = t.id
group by p.team_id, t.name, t.fan_base
having fan_base > 30000
order by player_count desc, fan_base desc

select 
	concat_ws(' ', c.first_name, c.last_name) as coach_full_name,
	concat_ws(' ', p.first_name, p.last_name) as player_full_name,
	t.name as team_name,
	sk.passing,
	sk.shooting,
	sk.speed
from players as p
join skills_data as sk on sk.id = p.skills_data_id
join players_coaches as pc on pc.player_id = p.id
join teams as t on p.team_id = t.id
join coaches as c on pc.coach_id = c.id
order by coach_full_name asc, player_full_name desc;


create or replace function fn_stadium_team_name(s_name varchar(30))
returns table
            (
                "name" VARCHAR(60)
            )
as
$$
begin
	return query
	select t.name from teams as t join stadiums as s on t.stadium_id = s.id
	where s.name = s_name
	order by t.name asc;
end
$$
language plpgsql;

SELECT fn_stadium_team_name('BlogXS')
SELECT fn_stadium_team_name('Quaxo')
SELECT fn_stadium_team_name('Jaxworks')








































































































































