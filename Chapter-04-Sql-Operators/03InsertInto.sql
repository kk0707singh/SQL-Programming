SELECT * FROM dbo.Employees


INSERT INTO dbo.Employees(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES(6, 'Raj', 'Samani', 'IT', 100000.00, '2026-04-20')


INSERT INTO dbo.Employees(EmployeeID, FirstName, LastName)
VALUES(7, 'KK', 'Singh')


INSERT INTO dbo.Employees
VALUES(8, 'Pinki', 'Rawat', 'Finance', '70000.00', '2024-06-06')


SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees' 