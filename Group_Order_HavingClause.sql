CREATE DATABASE NEW;

USE NEW;

CREATE TABLE Employee 
(
Emp_ID INT PRIMARY KEY,
Name VARCHAR(20),
Department VARCHAR(20),
Salary INT)

select * from Employee; 
insert into Employee values 
(101,'Amit','IT',55000),
(102,'Neha','HR',40000), 
(103,'Rahul','Sales',60000), 
(104,'Priya','IT',45000),
(105,'Sneha','IT',55000);

SELECT * FROM Employee ORDER BY Salary ASC;
SELECT Name,Salary FROM Employee ORDER BY Department DESC;

SELECT * FROM Employee ORDER BY Salary DESC, Name ASC;

SELECT Department, COUNT(*) AS Total_Count
FROM Employee
GROUP BY Department;

SELECT Department, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Department;

SELECT Department, MAX(Salary) AS Maximum_Salary
FROM Employee
GROUP BY Department;

SELECT Department, AVG(Salary) AS Maximum_Salary
FROM Employee
GROUP BY Department
HAVING AVG(Salary>42000);

SELECT Department, COUNT(*) AS Total_Count
FROM Employee
GROUP BY Department
HAVING COUNT(*)>2;

SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employee
GROUP BY Department
HAVING AVG(Salary>45000)
ORDER BY Avg_Salary DESC;