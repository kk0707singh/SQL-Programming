SELECT * FROM Employees

SELECT * INTO emp_bkp FROM Employees
SELECT * FROM emp_bkp

-- A view is a virtual table, it is a stored sql query
-- it helps in reducing the complexity of the code
-- it helps in implementing security

GO
CREATE VIEW view_1 AS
    SELECT * FROM emp_bkp
GO

SELECT * FROM view_1


GO
CREATE VIEW view_2 AS(
    SELECT EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate FROM emp_bkp
)
GO

SELECT * FROM view_2


UPDATE view_1
SET EmployeeID = 100

DROP View view_2