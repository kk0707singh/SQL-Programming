


CREATE DATABASE [Advance SQL Questions]
USE [Advance SQL Questions]


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);

SELECT * FROM Employees

-- 2nd Highest salary:
SELECT MAX(Salary) [2nd highest salary] FROM Employees WHERE Salary<(SELECT MAX(Salary) FROM Employees)
-------------------- OR ---------------------

SELECT top 1 Salary FROM
(SELECT top 2 Salary FROM Employees ORDER BY Salary DESC) as salarytble
order by salary ASC

-- 3rd highest salary
SELECT max(Salary) [3rd highest salary] FROM employees 
where salary<(SELECT MAX(Salary) FROM Employees 
WHERE Salary<(SELECT MAX(Salary) FROM Employees))

-- 4th highest salary:
SELECT MAX(Salary) [4th highest salary] FROM employees 
where salary<(SELECT max(Salary) FROM employees 
where salary<(SELECT MAX(Salary) FROM Employees 
WHERE Salary<(SELECT MAX(Salary) FROM Employees)))

-- with help of cte: 2nd highest salary
with cte as(
    SELECT *, DENSE_RANK() OVER(ORDER BY salary DESC) [DR] FROM Employees
)

SELECT * FROM cte where DR = 2


-- with help of cte: 3nd highest salary
with cte as(
    SELECT *, DENSE_RANK() OVER(ORDER BY salary DESC) [DR] FROM Employees
)

SELECT * FROM cte where DR = 3


-- subquery along with denserank(): 2nd highest salary:
SELECT salary as [2nd highest salary] FROM
(SELECT *,DENSE_RANK() OVER(ORDER BY salary desc) [DR] FROM Employees) X
WHERE DR = 2

-- 3rd highest salary
SELECT salary as [3nd highest salary] FROM
(SELECT *,DENSE_RANK() OVER(ORDER BY salary desc) [DR] FROM Employees) X
WHERE DR = 3

-- Subqueries 2nd highest salary:
SELECT top 1 Salary [2nd highest salary] FROM
(SELECT top 2 Salary FROM Employees ORDER BY Salary DESC) x
order by salary ASC

-- 3rd highest salary:
SELECT top 1 Salary [3rd highest salary] FROM
(SELECT top 3 Salary FROM Employees ORDER BY Salary DESC) x
order by salary ASC