-- ===============================================
-- SQL DDL (Data Definition Language) Practice
-- ===============================================

-- 1️⃣ CREATE DATABASE
-- This creates a new database named 'CompanyDB'
CREATE DATABASE CompanyDB;

-- Use the newly created database
USE CompanyDB;

-- 2️⃣ CREATE TABLE
-- Creating a table named 'Employees'
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,      -- Primary key column
    FirstName VARCHAR(50) NOT NULL,  -- First name, cannot be NULL
    LastName VARCHAR(50) NOT NULL,   -- Last name, cannot be NULL
    Salary DECIMAL(10,2),            -- Salary with 2 decimal places
    Department VARCHAR(50)
);

-- 3️⃣ ALTER TABLE
-- Adding a new column 'JoiningDate' to Employees table
ALTER TABLE Employees
ADD JoiningDate DATE;

-- Modifying a column data type
ALTER TABLE Employees
MODIFY Salary DECIMAL(12,2);

-- Dropping a column 'Department'
ALTER TABLE Employees
DROP COLUMN Department;

-- 4️⃣ RENAME TABLE
-- Renaming table 'Employees' to 'Staff'
RENAME TABLE Employees TO Staff;

-- 5️⃣ TRUNCATE TABLE
-- Deletes all records but keeps table structure intact
TRUNCATE TABLE Staff;

-- 6️⃣ DROP TABLE
-- Deletes table and all data permanently
DROP TABLE Staff;

-- 7️⃣ DROP DATABASE
-- Deletes the entire database permanently
DROP DATABASE CompanyDB;