create table manufacturers(
	id serial primary key,
	name varchar(50) not null
); 

create table models(
	id int generated always as identity (start with 1000 increment 1) primary key,
	model_name varchar(50) not null,
	manufacturer_id int,
	CONSTRAINT fk_models_manufacturers
        FOREIGN KEY (manufacturer_id)
            REFERENCES manufacturers (id)
); 


create table production_years(
	id serial primary key,
	established_on date not null,
	manufacturer_id int,
	CONSTRAINT fk_production_years_manufacturers
        FOREIGN KEY (manufacturer_id)
            REFERENCES manufacturers (id)
);

insert into manufacturers(name) values
('BMW'),
('Tesla'),
('Lada');

insert into models(model_name, manufacturer_id) values
('X1', 1),
('i6', 1),
('Model S', 2),
('Model X', 2),
('Model 3', 2),
('Nova', 3);

insert into production_years(established_on, manufacturer_id) values
('1916-03-01', 1),
('2003-01-01', 2),
('1966-05-01', 3);











































