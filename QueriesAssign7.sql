CREATE DATABASE NEW2;

USE NEW2;

CREATE TABLE STUDENT
(
	Student_ID INT primary KEY,
    Student_Name VARCHAR(30) NOT NULL,
    Branch varchar(30) NOT NULL,
    Marks int,
    City varchar(20)
);

CREATE TABLE COURSE
(
	Course_ID varchar(4),
    Course_Name Varchar(10),
    Credits Int
);
    
CREATE TABLE ENROLMENT
(
	Student_ID Int,
    Course_ID Varchar(4),
    Marks int
);

select * from STUDENT; 
insert into STUDENT values (101,'Amit','CSE',85,'Pune'), 
(102,'Sneha','CSE',72,'Mumbai'), 
(103,'Rahul','IT',91,'Pune'), 
(104,'Priya','CSE',65,'Nagpur'), 
(105,'Neha','IT',88,'Pune');  

select * from COURSE; 
insert into COURSE values ('C101','DBMS',4), 
('C102','Java',3),
('C103','Python',4),
('C104','AI',3);

select * from ENROLMENT;
insert into ENROLMENT values(101,'C101',85),
(101,'C102',78),
(102,'C101',72),
(103,'C101',91),
(103,'C103',89),
(104,'C102',65),
(105,'C101',88);

select MAX(Marks) from STUDENT;
select Student_Name from STUDENT where Marks=91;		 select Student_Name, Marks FROM STUDENT where Marks =(Select MAX(Marks) FROM STUDENT);

select Student_Name, Marks from STUDENT where Marks > (Select avg(Marks) FROM STUDENT);


select Student_ID FROM ENROLMENT where Course_ID = (Select Course_ID FROM COURSE where Course_Name="DBMS");
select Student_Name FROM STUDENT where Student_ID in (Select Student_ID FROM ENROLMENT where Course_ID='C101');


select Student_Name FROM STUDENT where Student_ID NOT in (Select Student_ID FROM ENROLMENT where Course_ID='C101');

select * FROM STUDENT where Marks > (Select MIN(Marks) FROM STUDENT where Branch='IT');
select * FROM STUDENT where Marks > ANY (Select Marks FROM STUDENT where Branch='IT');
select * FROM STUDENT where Marks > ALL (Select Marks FROM STUDENT where Branch='CSE');

select * FROM STUDENT where Student_ID in (Select Student_ID FROM ENROLMENT);
select Student_Name FROM STUDENT as S where EXISTS( SELECT Student_ID FROM ENROLMENT as E WHERE E.Student_ID= S.Student_ID);

select * FROM STUDENT where Marks > (Select AVG(Marks) FROM STUDENT where Branch='IT') having Branch='IT';
select * FROM STUDENT where Marks > (Select AVG(Marks) FROM STUDENT where Branch='CSE') having Branch='CSE';
select Student_Name,Branch,Marks FROM STUDENT as S where Marks > ( SELECT AVG(Marks) FROM STUDENT as E WHERE E.Branch= S.Branch);

select * FROM STUDENT where Marks < (Select AVG(Marks) FROM STUDENT);

select * FROM STUDENT where City = (Select City FROM STUDENT where Student_Name='Rahul');

SELECT * FROM STUDENT WHERE Marks > (Select Marks FROM STUDENT WHERE Student_Name = 'Neha');

