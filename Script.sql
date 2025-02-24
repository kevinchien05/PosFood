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
 
 alter table products 
 add column status int default 0 not null;
 
 
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
 
 alter table orders
 add column status int default 0 not null;
 
 
 create table order_details(
 	id serial not null,
 	note text default '',
 	qty int not null,
 	id_order int not null,
 	id_product int not null,
 	primary key(id),
 	constraint fk_order_detail_order foreign key (id_order) references orders (id),
 	constraint fk_order_detail_product foreign key (id_product) references products (id)
 );
 
 alter table order_details 
 add column price int not null;
 
  create table takeaways(
 	id serial not null,
 	order_date timestamp not null default current_timestamp,
 	total int not null,
 	id_user int not null,
 	primary key(id),
 	constraint fk_takeaway_user foreign key (id_user) references users (id)
 );
  
  alter table takeaways
  add column status int default 0 not null;
  
  create table takeaway_details(
 	id serial not null,
 	note text default '',
 	qty int not null,
 	id_takeaway int not null,
 	id_product int not null,
 	primary key(id),
 	constraint fk_takeaway_detail_takeaway foreign key (id_takeaway) references takeaways (id),
 	constraint fk_takeaway_detail_product foreign key (id_product) references products (id)
 );
  
 alter table takeaway_details 
 add column price int not null;
  
  insert into users (username,password,role)
  values ('admin','admin','admin'),
  		 ('staff','staff','staff'),
  		 ('kasir','kasir','kasir'),
  		 ('chef','chef','chef');
 
  
 
 