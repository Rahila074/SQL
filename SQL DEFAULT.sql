create database nulltable;
use nulltable;
insert into nulltable(id,name,age)
values(null,"anu",54);

create table df(id int,age int,salary int default 5000);
insert into df(id,age,salary)values(1,24,default);
select * from df;
insert into df(id,age)values(2,34);
select * from df;
