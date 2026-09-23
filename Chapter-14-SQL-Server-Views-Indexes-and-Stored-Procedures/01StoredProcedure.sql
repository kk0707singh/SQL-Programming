

CREATE DATABASE testDB
USE testDB

create database testDB

use testdb

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

SELECT * FROM Employees

GO

CREATE PROCEDURE sp_test
AS
BEGIN
    SELECT * FROM Employees
END

GO

-- to call stored procedure
sp_test

EXEC sp_test

EXECUTE sp_test


-- create one more stored procedure
go
CREATE Proc sp_test1
AS
BEGIN
    SELECT FirstName, LastName FROM Employees
END
GO

sp_test1


-- ------------------------------------------
-- alter the existing stored procedure
GO
ALTER proc sp_test1
AS
BEGIN
    SELECT EmployeeID, FirstName, LastName FROM Employees
END
GO

sp_test1