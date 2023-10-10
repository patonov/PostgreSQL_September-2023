create table item_types(
	id serial primary key,
	item_type_name varchar(50)
);

create table items(
	id serial primary key,
	item_name varchar(50),
	item_type_id int,
	constraint fk_items_item_types foreign key (item_type_id) references item_types(id)
);

create table cities(
	id serial primary key,
	city_name varchar(50)
);

create table customers(
	id serial primary key,
	customer_name varchar(50),
	birthday date,
	city_id int,
	constraint fk_customers_cities foreign key (city_id) references cities(id)
);

create table orders(
	id serial primary key,
	customer_id int,
	constraint fk_orders_customers foreign key (customer_id) references customers(id)
);

create table order_items(
	order_id int,
	item_id int,
	constraint pk_order_items primary key (order_id, item_id),
	constraint fk_order_items_orders foreign key (order_id) references orders(id),
	constraint fk_order_items_items foreign key (item_id) references items(id)
);







































