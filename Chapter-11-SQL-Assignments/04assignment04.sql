-- Creating the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Creating the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);


-- Inserting data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

SELECT * FROM Employees
SELECT * FROM Departments

-- Write a SQL query to list the names of employees along with the names of the departments they work in.
SELECT FirstName, LastName, DepartmentName FROM Employees E INNER JOIN Departments D ON e.DepartmentID = d.DepartmentID

-- Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
SELECT D.DepartmentName, E.FirstName, E.LastName FROM Departments D LEFT JOIN Employees E
ON D.DepartmentID = E.DepartmentID;

-- Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
SELECT
    E.FirstName,
    E.LastName
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentID IS NULL;

-- Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
SELECT
    FirstName,
    LastName
FROM Employees
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Employees
    WHERE FirstName = 'Jane'
      AND LastName = 'Doe'
);

-- Write a SQL query to find the department with the highest total salary paid to its employees.
SELECT TOP 1
    D.DepartmentName,
    SUM(E.Salary) AS TotalSalary
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName
ORDER BY SUM(E.Salary) DESC;