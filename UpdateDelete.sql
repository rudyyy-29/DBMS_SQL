create database Company; 
use Company; 

create table emp ( 
eid int, 
name varchar(30) not null, 
dept varchar(10), 
salary int, 
city varchar(10) 
default 'Pune', 
age int check(age>20));  

select * from emp; 
insert into emp values (101,'Amit','IT',55000,'Pune',25), 
(102,'Sneha','HR',45000,'Mumbai',28), 
(103,'Rahul','Sales',60000,'Pune',32), 
(104,'Priya','IT',70000,'Nagpur',30), 
(105,'Karan','Finance',50000,'Mumbai',35), 
(106,'Anjali','HR',48000,'Pune',27), 
(107,'Rohan','Finance',75000,'Mumbai',33), 
(108,'Neha','Sales',52000,'Pune',31), 
(109,'Sagar','Finance',75000,'Mumbai',33), 
(110,'Pooja','IT',65000,'Nagpur',26);   

update emp set salary=60000 where name='Amit'; 
update emp set city='Pune' where name='Sneha'; 
update emp set salary= salary+5000 where dept='IT'; 
update emp set dept='Marketing' where eid=107; 
update emp set age=27 where name='Pooja'; 
delete from emp where eid=110; 
delete from emp where dept='HR'; 
delete from emp where name='Karan'; 
delete from emp where salary<50000;