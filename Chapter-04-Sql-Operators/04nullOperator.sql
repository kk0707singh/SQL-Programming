SELECT * FROM dbo.Employees
INSERT INTO dbo.Employees
VALUES(9, 'Jay', '', 'IT', 73000.00, '2022-04-04')


INSERT INTO dbo.Employees
VALUES(10, 'Nitin', 'Samni', '0', 54000.00, '2021-02-22')


SELECT * FROM dbo.Employees WHERE Department = null


SELECT * FROM dbo.Employees WHERE Department IS NULL


SELECT * FROM dbo.Employees WHERE Department IS NOT NULL

