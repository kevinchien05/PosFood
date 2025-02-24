create table users(
	id serial not null,
	username varchar(100) not null,
	password varchar(255) not null,
	role varchar(10) default 'staff' not null,
	primary key(id),
	constraint unique_username unique(username)
);

 create table categories(
 	id serial not null,
 	name varchar(50) not null,
 	primary key(id),
 	constraint unique_category unique(name)
 );
 
 drop table categories;
 
 create table tables(
 	id serial not null,
 	name varchar(10) not null,
 	person int not null,
 	primary key(id),
 	constraint unique_table unique(name)
 );
 
 alter table "tables" 
 add constraint unique_table unique(name);
 
 create table products(
 	id serial not null,
 	name varchar(100) not null,
 	description text,
 	image varchar(255) not null,
 	cost int default 0 not null,
 	price int default 0 not null,
 	discount_percent int default 0 not null,
 	discount_price int default 0 not null,
 	id_category int not null,
 	primary key(id),
 	constraint fk_product_category foreign key (id_category) references categories (id),
 	constraint unique_name unique (name),
 	constraint unique_image unique(image)
 );
 
 
 create table orders(
 	id serial not null,
 	order_date timestamp not null default current_timestamp,
 	total int not null,
 	id_table int not null,
 	id_user int not null,
 	primary key(id),
 	constraint fk_order_table foreign key (id_table) references tables (id),
 	constraint fk_order_user foreign key (id_user) references users (id)
 );
 
 create table order_details(
 	id serial not null,
 	
 );
 