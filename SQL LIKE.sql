use college;

create table course(course_id  int primary key,course_name varchar(50),
                    instructor varchar(50),duration int ,fees int,start_date date );
                    
 insert into course(course_id,course_name,instructor,duration,fees,start_date)
              values(1,"data science","dr.ahjua",10,1500,"2024-07-01"),
                    (2,"web development","mr.kapoor",12,1200,"2024-07-30"),
                    (3,"machine learning","dr.gupta",8,1800,"2024-06-01"),
                    (4,"cloud computing","mr.mehta",6,1600,"2024-09-01"),
                    (5,"cybersecurity","mr.sharma",14,2000,null);
insert into course(course_id,course_name,instructor,duration,fees,start_date)values(6,"big data",
                   "dr.ahjua",9,1700,null);
                   
select * from course where instructor="dr.ahjua"; 

select * from  course where duration>8 and fees<1700; 

select * from course where duration=12 or fees >1500;

select * from course where start_date is not null;

select * from course where instructor!= "mr.sharma"; 

select * from course where fees between 1500 and 1800;

select count (course_name) from course;

select distinct instructor from course;    
select * from  course where instructor in("dr.ahjua","mr.sharma");

select * from course where instructor not in ("dr.gupta","mr.mehta");

select * from course where course_name  like "data%";

select * from course where course_name like "%data%";
select * from course where course_name like "____________";
select * from course where instructor like "m%" or instructor like "b%";            
                    
select * from course where instructor not like "m%";
select * from course where course_name like "c_____________%";

              