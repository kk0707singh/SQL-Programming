SELECT * INTO #temp1 FROM [dbo].[Employees]

SELECT * FROM #temp1
-- same as above query
SELECT * FROM dbo.Employees


-- ## global table
SELECT * INTO ##temp2
FROM [dbo].[EmployeeRecords]
 