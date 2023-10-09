create table customers(
	id serial primary key,
	"name" varchar(30),
	"date" date 
);

create table photos(
	id serial primary key,
	"url" varchar(30),
	"place" varchar(30),
	customer_id int,
	constraint fk_photos_customers foreign key (customer_id) references customers(id)
);

insert into customers("name", "date") values
('Bella', '2022-03-25'),
('Philip', '2022-07-05');

insert into photos(url, place, customer_id) values
('bella_1111.com', 'National Theatre', 1),
('bella_1112.com', 'Largo', 1),
('bella_1113.com', 'The View Restaurant', 1),
('philip_1121.com', 'Old Town', 2),
('philip_1122.com', 'Rowing Canal', 2),
('philip_1123.com', 'Roman Theater', 2);



























