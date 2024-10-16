use college;
select * from student where marks between 80 and 90;

select * from student where rollno between 102 and 105;

select * from student where city in ("mumbai","pune");

select * from student where city not in ("mumbai","pune");
# startin letter a(a%)
select * from student where name like "a%";
# ending a letter(%a)
select * from student where name like "%a";

select * from student where name like "%et%";
# second letter h varanm
select * from student where name like "_h%";

# third letter h varanm

select * from student where name like "__a%";
#starting b and ending a
select * from student where name like "b%a";

#null values

select * from student where rollno is null;

select * from student where rollno is not null;
