-- Addition
SELECT 10 + 5;

-- Subtraction
SELECT 10 - 5;

-- Multiplication
SELECT 10 * 5;

-- Division
SELECT 10 / 5;

SELECT @@VERSION;

SELECT @@VERSION,
       DB_NAME() AS DatabaseName,
       @@SERVERNAME AS ServerName;