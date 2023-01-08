-- creating database
create database favorite_food_details;

-- activating data base
use favorite_food_details;

-- creating 1st table with columns name
CREATE TABLE sales (
customer_id varchar(1),
product_date date,
product_id int);

-- view table just created
select * from sales;

-- inserting values in table1
insert into sales value
("A","2021-01-01",1);
insert into sales value("A","2021-01-01",2);
insert into sales value("A","2021-01-07",2);
insert into sales value("A","2021-01-10",3);
insert into sales value("A","2021-01-11",3);
insert into sales value("A","2021-01-11",3);
insert into sales value("B","2021-01-01",2);
insert into sales value("B","2021-01-02",2);
insert into sales value("B","2021-01-04",1);
insert into sales value("B","2021-01-11",1);
insert into sales value("B","2021-01-16",3);
insert into sales value("B","2021-02-01",3);
insert into sales value("C","2021-01-01",3);
insert into sales value("C","2021-01-01",3);
insert into sales value("C","2021-01-07",1);

-- view 1st table
SELECT * FROM sales;

-- counting number of entries in 1st table
select count(*) from sales;

-- creating 2nd table
CREATE TABLE menu (
product_id int,
product_name varchar(25),
price int);

-- view 2nd table just created
select * from menu;

-- inserting values in 2nd table
insert into menu value
(1,"sushi",10);
insert into menu value(2,"curry",15);
insert into menu value(3,"ramen",12);

-- view 2nd table with data
select * from menu;

-- creating 3d table members
create table members(
customer_id varchar(1),
joining_date date);

-- view 3rd table members
select * from members;

-- inserting data in 3rd table
insert into members  value ("A","2021-01-07");
insert into members value ("B","2021-01-09");

-- view 3rd table membes
select * from members;