-- isnull, coalesce functions:


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);


SELECT * FROM Customers

-- isnull:
SELECT ISNULL(null, '1st value null')
SELECT ISNULL('abx', null)
SELECT ISNULL(null, null)

-- coalsce:
SELECT coalesce('A','B', 'C') 
SELECT coalesce(NULL,'B', 'C') 
SELECT coalesce(NULL,NULL, 'C') 

SELECT CustomerID, Email, PhoneNumber FROM Customers

-- REPLACING NULL VALUES: WITH ISNULL() FUNC
SELECT CustomerID, ISNULL(Email, 'EMAIL NA'), ISNULL(PhoneNumber, 'PH NA') FROM Customers


-- REPLACING NULL VALUES: WITH COALESCE() FUNC
SELECT CustomerID, COALESCE(Email, PHONENUMBER, 'CONTACT NA') [COALESCE FUNC]
FROM Customers