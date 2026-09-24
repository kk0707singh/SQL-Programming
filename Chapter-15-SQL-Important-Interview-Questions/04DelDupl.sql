-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID


SELECT * FROM EmployeeRecords_1
ORDER BY EmployeeID, Email


SELECT DISTINCT * INTO #1 FROM EmployeeRecords_1
TRUNCATE table EmployeeRecords_1

INSERT INTO EmployeeRecords_1 SELECT * from #1

-- record with lower employeeid should remain same:
with cte AS(
    SELECT *, DENSE_RANK() OVER(PARTITION BY email ORDER BY employeeid) [DR] FROM EmployeeRecords_1
)
-- SELECT * FROM cte
DELETE FROM cte WHERE DR = 2


-- retain the record with higher emp id:
SELECT * INTO employeerecors_2 FROM #1

SELECT * FROM employeerecors_2 ORDER BY Email

with cte as(
    SELECT *, DENSE_RANK() OVER(PARTITION BY email ORDER BY employeeid desc) [DR] 
    FROM employeerecors_2
)
-- SELECT * FROM cte
DELETE FROM cte WHERE DR = 2