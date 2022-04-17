create database store;
create table countries (
country_code int not null ,
contient_name varchar(20) unique 
);
select * from countries; 
use store;
create table users(
id int primary key,
full_name varchar(20),
email varchar(20) unique,
gender char(1) check(gender="m" or gender="f"),
date_of_birth varchar(15),
createdAt datetime
);
use store;
create table orders(
id int primary key,
status varchar(6),
created_at datetime,
foreign key (user_id) references users(id)
);
use store; 
create table order_products(
order_id int,
product_id int,
quantity int default 0,
primary key (order_id, product_id),
foreign key (order_id) references orders(id),
foreign key (product_id) references products(id)
);

create table products (
id int primary key,
name varchar (10) not null ,
price int default 0,
status varchar(10) check (status ='valid' or 'expired'),
created_at datetime
);

-- DML
insert into countries values(1,"England")
insert into users values(1,"Rida Saleh",Ridaalruwaili@hotmail.com","m",1996/7/27","25-06-18 3:00:00 AM",1)
insert into orders values(1,1,"completed","22-04-17","25-06-18 3:00:00 PM")
insert into products values(1,"cubp","100","Available","25-06-18 3:00:00 PM")
insert into order_products values(1,1,2)
update countries set contient_name="Riyadh"where code="1"
delete from products where id="1"

