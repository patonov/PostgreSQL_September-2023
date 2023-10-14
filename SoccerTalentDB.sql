create table towns(
	id serial primary key,
	name varchar(45) not null
);

create table stadiums(
	id serial primary key,
	name varchar(45) not null,
	capacity int not null check(capacity > 0),
	town_id int not null,
	constraint fk_stadiums_towns foreign key (town_id) references towns(id) on delete cascade 
);

create table teams(
	id serial primary key,
	name varchar(45) not null,
	established date not null,
	fan_base int not null default 0 check(fan_base >= 0),
	stadium_id int not null,
	constraint fk_teams_stadiums foreign key (stadium_id) references stadiums(id) on delete cascade
);

create table coaches(
	id serial primary key,
	first_name varchar(10) not null,
	last_name varchar(20) not null,
	salary numeric(10, 2) not null default 0 check(salary >= 0),
	coach_level int not null default 0 check(coach_level >= 0)
);

create table skills_data(
	id serial primary key,
	dribbling int null default 0 check(dribbling >= 0),
	pace int null default 0 check(pace >= 0),
	"passing" int null default 0 check("passing" >= 0),
	shooting int null default 0 check(shooting >= 0),
	speed int null default 0 check(speed >= 0),
	strength int null default 0 check(strength >= 0)
);

create table players(
	id serial primary key,
	first_name varchar(10) not null,
	last_name varchar(20) not null,
	age int null default 0 check(age >= 0),
	"position" char(1) not null,
	salary numeric(10, 2) not null default 0 check(salary >= 0),
	hire_date timestamp not null,
	skills_data_id int not null,
	team_id int null,
	constraint fk_players_skills_data foreign key (skills_data_id) references skills_data(id) on delete cascade,
	constraint fk_players_teams foreign key (team_id) references teams(id) on delete cascade
);

create table players_coaches(
	player_id int null,
	coach_id int null,
	constraint pk_players_coaches primary key(player_id, coach_id),
	constraint fk_players_coaches_players foreign key (player_id) references players(id) on delete cascade,
	constraint fk_players_coaches_coaches foreign key (coach_id) references coaches(id) on delete cascade
);























