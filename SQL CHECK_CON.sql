show tables;
use animals;
create table check_con(id int not null,name varchar(40) check (name!=null),
                        age int not null check (age>18),
                        city char(30),primary key(id));
 insert into check_con(id,name,age,city)values(1,"nima",19,'mumbai');
 insert into check_con(id,name,age,city)values(2,'jinu',45,'pune');
 
 create table check_con1(id int not null,name varchar(30)not null,salary int check (salary=40000),
                             age int check(age>30));
insert into check_con1(id,name,salary,age)values(0,0,40000,45);
insert into check_con1(id,name,salary,age)values(1,'linu',40000,31);
select * from check_con;
select * from check_con1;                             
