create table products(
	"product_name" varchar(100) not null
);

insert into products values ('Broccoli', 'Shampoo', 'Toothpaste', 'Candy');

alter table products
add column id serial primary key;

alter table products
drop constraint products_pkey;






















