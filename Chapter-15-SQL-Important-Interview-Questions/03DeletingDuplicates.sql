

-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry

SELECT * FROM EmployeeRecords ORDER BY EmployeeID, EmployeeName, ManagerID
SELECT * INTO emprecord_bkp FROM EmployeeRecords

with cte as(
    SELECT *, ROW_NUMBER() OVER(PARTITION BY employeeid, employeename, managerid ORDER BY employeeid) [ROW Number] FROM EmployeeRecords
)

DELETE FROM cte where [ROW Number] = 2


SELECT * FROM emprecord_bkp
SELECT  DISTINCT * into #1 FROM emprecord_bkp

TRUNCATE Table emprecord_bkp

INSERT into emprecord_bkp SELECT * from #1