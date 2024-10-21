create database city;

use city;

create table city(id int not null,name varchar (30),primary key(id));
create table student(id int not null,name varchar(50),cityid int,city varchar(50),
primary key(id),foreign key (cityid) references city(id));

use city;
show tables;
select * from city;
select * from student;


use city;


insert into city(id,name)
values(1,"pune"),
(2,"mumbai"),
(3,"delhi");

INSERT INTO student (id, name, cityid, city)
VALUES (101, 'karan', 1, 'pune'),
       (102, 'arjun', 2, 'mumbai'),
       (103, 'ram', 1, 'pune'),
       (104, 'shyam', 3, 'delhi');

select * from city;
select * from student;



