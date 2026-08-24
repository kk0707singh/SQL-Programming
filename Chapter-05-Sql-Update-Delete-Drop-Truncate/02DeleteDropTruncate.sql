SELECT * FROM dbo.employees

SELECT * INTO #tble1 FROM dbo.Employees
SELECT * FROM #tble1


-- Delete:
DELETE FROM #tble1
WHERE LastName = '' OR Department = '0'


-- Delete without where clause: entire data will delete without using WHERE
SELECT * INTO #tble2 FROM dbo.Employees

SELECT * from #tble2
DELETE FROM #tble2


-- truncate:
SELECT * FROM #tble1
TRUNCATE TABLE #tble1


-- DROP:
DROP TABLE #tble1