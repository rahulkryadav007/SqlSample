create database practice_db;
use practice_db;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    manager_id INT
);

INSERT INTO employees (first_name, last_name, department, salary, hire_date, manager_id)
VALUES
('Rahul', 'Yadav', 'IT', 60000, '2022-01-10', NULL),
('Priya', 'Sharma', 'IT', 55000, '2022-03-15', 1),
('Amit', 'Kumar', 'Finance', 70000, '2021-12-01', NULL),
('Neha', 'Singh', 'Finance', 65000, '2022-02-20', 3),
('Rohan', 'Verma', 'HR', 50000, '2023-01-05', NULL),
('Simran', 'Gupta', 'HR', 52000, '2023-02-10', 5),
('Ankit', 'Raj', 'IT', 58000, '2022-05-22', 1),
('Sanya', 'Mehra', 'Finance', 72000, '2021-11-30', 3);
SELECT * FROM employees;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT e.first_name AS employee, m.first_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;

SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT first_name, last_name 
FROM employees 
WHERE department = 'IT';
SELECT * 
FROM employees 
WHERE salary > 60000;

SELECT * 
FROM employees 
WHERE hire_date > '2022-01-01';

SELECT * 
FROM employees 
ORDER BY salary DESC;

SELECT * 
FROM employees 
ORDER BY salary DESC 
LIMIT 3;
SELECT COUNT(*) AS total_employees 
FROM employees;


SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary 
FROM employees;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT e.first_name AS employee, m.first_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;

SELECT m.first_name AS manager, COUNT(e.id) AS team_size
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id
GROUP BY m.first_name;