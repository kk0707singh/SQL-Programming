/*
a common table (CTE) in SQL is a temporary result set that you can refrence 
within a SELECT, INSERT, UPDATE or DELETE statement CTEs are defined using the
WITH keyword, and they can make complex quesries easier to write, understand, and maintained
by breaking them into smaller parts
*/
SELECT * FROM Employees

SELECT * into #temp1 FROM Employees
SELECT * FROM #temp1

-- example 1: CTE:
WITH CTE AS (
    SELECT * FROM #temp1
)
SELECT * FROM CTE

-- Example 2:
with test_cte as (
    SELECT EmployeeID, FirstName FROM #temp1 where EmployeeID in (2,4)
)
SELECT * FROM test_cte

-- Example 3: 
WITH [comm table exp] as (
    SELECT * FROM #temp1 WHERE EmployeeID in (1,2,3)
)
SELECT * into #temp2 FROM [comm table exp]

SELECT * FROM #temp2

-- Example 4: 
with cte_1 as(
    SELECT * FROM #temp1 WHERE EmployeeID IN (2,4,6)
)
UPDATE #temp1 SET employeeid = 101 WHERE employeeID in(SELECT DISTINCT employeeid FROM cte_1)
SELECT * FROM #temp1


-- Example 5:
with cte_2 as(
    SELECT * FROM #temp1 where EmployeeID = 1
)
DELETE FROM #temp1 where EmployeeID in(SELECT DISTINCT EmployeeID FROM cte_2)
SELECT * FROM #temp1

-- Example 6:
with cte_3 as(
    SELECT * FROM #temp1 WHERE EmployeeID = 101
)
INSERT INTO #temp1 SELECT * FROM cte_3
SELECT * FROM #temp1




SELECT * FROM Employees
SELECT * into #1 FROM Employees
SELECT * FROM #1

-- Example1:
with cte1 as(
    SELECT * FROM #1 WHERE EmployeeID in (1,2)
), cte2 as (
    SELECT * FROM #1 WHERE EmployeeID in(3,4)
)
SELECT * FROM cte1 UNION ALL SELECT * FROM cte2


-- Example2:
with cte3 as(
    SELECT EmployeeID, FirstName FROM #1 WHERE EmployeeID = 1
), cte4 as(
    SELECT EmployeeID, FirstName FROM #1 where EmployeeID = 3
)
SELECT * into #2 FROM (
    SELECT * FROM cte3 UNION all SELECT * FROM cte4
) x

SELECT * FROM #2



-- Example3:
with cte3 as(
    SELECT EmployeeID, FirstName FROM #1 WHERE EmployeeID = 1
), cte4 as(
    SELECT EmployeeID, FirstName FROM #1 where EmployeeID = 3
)
insert into #2 SELECT * FROM (
    SELECT * FROM cte3 UNION all SELECT * FROM cte4
) x

SELECT * FROM #2

-- Example4:
