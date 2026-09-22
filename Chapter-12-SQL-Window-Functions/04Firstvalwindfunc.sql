create DATABASE [window fun]
use [window fun]

CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

SELECT * FROM EmployeeSalaries



SELECT *, FIRST_VALUE(Salary) OVER (ORDER BY salary ASC) [min sala]
FROM EmployeeSalaries


SELECT *,
FIRST_VALUE(EmployeeName) OVER (ORDER BY salary ASC) [min emp sal],
FIRST_VALUE(Salary) OVER (ORDER BY salary ASC) [min sala]
FROM EmployeeSalaries

SELECT *, FIRST_VALUE(EmployeeID) OVER(PARTITION BY department ORDER BY salary) [first val]
FROM EmployeeSalaries

SELECT *, FIRST_VALUE(EmployeeID) OVER(PARTITION BY department ORDER BY salary desc) [first val]
FROM EmployeeSalaries

SELECT *, FIRST_VALUE(EmployeeID) OVER(PARTITION BY department ORDER BY salary desc) [first val],
FIRST_VALUE(EmployeeName) OVER(PARTITION BY department ORDER BY salary desc) [first val]
FROM EmployeeSalaries


-- last_value():
-- incorrect query
SELECT *,
LAST_VALUE(EmployeeName) OVER(ORDER BY salary DESC)
FROM EmployeeSalaries


-- correct query
SELECT *,
LAST_VALUE(EmployeeName) OVER(ORDER BY salary DESC ROWS BETWEEN unbounded preceding and unbounded following)
FROM EmployeeSalaries

SELECT *,
LAST_VALUE(EmployeeName) OVER(ORDER BY salary DESC ROWS BETWEEN unbounded preceding and unbounded following),
LAST_VALUE(Salary) OVER(ORDER BY salary DESC ROWS BETWEEN unbounded preceding and unbounded following)
FROM EmployeeSalaries

SELECT *,
LAST_VALUE(EmployeeName) OVER(PARTITION BY department ORDER BY salary DESC ROWS BETWEEN unbounded preceding and unbounded following),
LAST_VALUE(Salary) OVER(PARTITION BY department ORDER BY salary DESC ROWS BETWEEN unbounded preceding and unbounded following)
FROM EmployeeSalaries

SELECT *,
LAST_VALUE(EmployeeName) OVER(PARTITION BY department ORDER BY salary ROWS BETWEEN unbounded preceding and unbounded following),
LAST_VALUE(Salary) OVER(PARTITION BY department ORDER BY salary ROWS BETWEEN unbounded preceding and unbounded following)
FROM EmployeeSalaries

-- first value window function
SELECT *,
first_VALUE(EmployeeName) OVER(PARTITION BY department ORDER BY salary DESC),
first_VALUE(Salary) OVER(PARTITION BY department ORDER BY salary DESC)
FROM EmployeeSalaries