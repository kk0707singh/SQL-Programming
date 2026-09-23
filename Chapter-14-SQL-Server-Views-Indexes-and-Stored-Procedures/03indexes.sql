

SELECT * FROM Employees

CREATE INDEX ix_1 on employees(salary DESC)

CREATE INDEX ix_2 on employees(firstname, lastname)
DROP INDEX employees.ix_1