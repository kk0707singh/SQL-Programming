use employee_details

-- for selcting the whole table
SELECT * from Employees

-- to show only firstname column
SELECT firstname from Employees

-- to show only firstname and salary column
SELECT firstname, Salary from Employees

-- to show only firstname and lastName column
SELECT FirstName, LastName from Employees

-- to show employee ID along with firstname and lastname in diffrent column
SELECT EmployeeID, CONCAT(FirstName,' ',LastName) from Employees

-- to show employee ID along with firstname and lastname as fullname column
SELECT EmployeeID, CONCAT(FirstName,' ',LastName) [fullName] from Employees

-- other ways to write the above query
SELECT EmployeeID, CONCAT(FirstName,' ',LastName) as [fullName] from Employees
