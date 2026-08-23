SELECT * FROM dbo.EmployeeRecords

-- NOT operator
SELECT * FROM dbo.EmployeeRecords 
WHERE NOT FirstName = 'John' AND NOT Salary = 60000.00



SELECT * FROM dbo.EmployeeRecords 
WHERE NOT LastName = 'Miller' OR NOT Department = 'HR'


-- BETWEEN WITH AND OR NOT
SELECT * FROM dbo.EmployeeRecords 
WHERE Salary BETWEEN 75000.00 AND 85000.00

-- other ways to write the same above query
SELECT * FROM dbo.EmployeeRecords 
WHERE Salary >= 75000.00 AND Salary <= 85000.00



SELECT * FROM dbo.EmployeeRecords 
WHERE Salary NOT BETWEEN 75000.00 AND 85000.00

-- other ways to write the same above query
SELECT * FROM dbo.EmployeeRecords 
WHERE not Salary BETWEEN 75000.00 AND 85000.00




-- IN OPERATOR
SELECT * FROM dbo.EmployeeRecords 
WHERE Department = 'HR' OR Department = 'IT'


-- SAME AS ABOVE QUERY USING IN
SELECT * FROM dbo.EmployeeRecords 
WHERE Department IN ('HR', 'IT')


SELECT * FROM dbo.EmployeeRecords 
WHERE Department NOT IN ('HR', 'IT')


