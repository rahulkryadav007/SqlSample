create database sql_practice;
use sql_practice;
CREATE TABLE Employees (
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);

INSERT INTO Employees VALUES
(1,'Rahul','IT',60000),
(2,'Aman','HR',50000),
(3,'Neha','IT',70000),
(4,'Ravi','Sales',45000),
(5,'Priya','IT',70000);

Select * from Employees;

Select name,salary from Employees;
select * from Employees
where salary > 50000;
select * from Employees
where salary < 50000;

select * from Employees
order by salary DESC;

select * from Employees
order by salary ASC;

select count(*) from Employees;
select AVG(salary) from Employees;
select max(salary) from Employees;

select department, count(*)
from Employees
group by department;

select department, avg(salary)
from Employees
group by department;

	select department, count(*)
	from Employees
	group by department
	having count(*) > 1;

Select max(salary)
from employees
where salary < (select max(salary) from Employees);

select salary, count(*)
from Employees
group by salary
having count(*) > 1;


CREATE TABLE Courses (
course_id INT,
course_name VARCHAR(50)
);
INSERT INTO Courses VALUES
(1,'Java'),
(2,'Python'),
(3,'SQL');
CREATE TABLE Students (
id INT,
name VARCHAR(50),
course_id INT
);INSERT INTO Students VALUES
(1,'Rahul',1),
(2,'Aman',2),
(3,'Neha',1);

SELECT Students.name, Courses.course_name
FROM Students
INNER JOIN Courses
ON Students.course_id = Courses.course_id;



