SELECT * FROM EmployeeRecords
WHERE LastName = 'Miller' and EmployeeID = 3


SELECT * FROM EmployeeRecords
WHERE LastName = 'Miller' and EmployeeID = '3'


SELECT * FROM dbo.EmployeeRecords
WHERE Department = 'HR' or Department = 'Finance'



SELECT * FROM dbo.EmployeeRecords
WHERE (Department = 'HR' or Department = 'Finance') and Salary = 60000.00