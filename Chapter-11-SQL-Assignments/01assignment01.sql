
--Step 1) Create Table
CREATE TABLE EmployeeSales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    Department VARCHAR(50),
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE
);

--Step 2) Insert records into the table
INSERT INTO EmployeeSales (SaleID, EmployeeID, Department, SaleAmount, SaleDate)
VALUES 
(1, 101, 'Electronics', 500.00, '2023-08-01'),
(2, 102, 'Electronics', 300.00, '2023-08-03'),
(3, 101, 'Furniture', 150.00, '2023-08-02'),
(4, 103, 'Electronics', 250.00, '2023-08-04'),
(5, 104, 'Furniture', 200.00, '2023-08-02'),
(6, 101, 'Furniture', 450.00, '2023-08-05'),
(7, 102, 'Electronics', 700.00, '2023-08-05'),
(8, 103, 'Furniture', 100.00, '2023-08-06');


--***********************************************************************************
--Column Definitions

-- SaleID (INT PRIMARY KEY): Unique identifier for each sale.
-- EmployeeID (INT): Identifier for the employee who made the sale.
-- Department (VARCHAR(50)): Name of the department where the sale was made.
-- SaleAmount (DECIMAL(10, 2)): Total amount of the sale.
-- SaleDate (DATE): Date when the sale occurred.
--***********************************************************************************
SELECT * FROM EmployeeSales

-- Write a query to calculate the total sales amount for each department in the EmployeeSales table.
SELECT Department, sum(SaleAmount) [totalsale] FROM EmployeeSales GROUP BY Department

-- Write a query to count the number of sales made by each employee.
SELECT EmployeeID, COUNT(EmployeeID) [no. of sales] FROM EmployeeSales GROUP BY EmployeeID

-- Write a query to calculate the average sale amount for each department.
SELECT Department, avg(SaleAmount) [avgSale] FROM EmployeeSales GROUP BY Department

-- Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.
SELECT EmployeeID, sum(SaleAmount) FROM EmployeeSales GROUP BY EmployeeID having COUNT(EmployeeID)>1

-- Write a query to find the total sales for each month in 2023.
SELECT MONTH(SaleDate), sum(SaleAmount) [totalsale] FROM EmployeeSales WHERE SaleDate >= '20230101'
AND SaleDate < '20240101' GROUP BY MONTH(SaleDate)

--or
SELECT SUM(SaleAmount) AS TotalSales
FROM EmployeeSales
WHERE SaleDate BETWEEN '2023-01-01' AND '2023-12-31';

