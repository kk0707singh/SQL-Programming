create DATABASE [Profit DB]
use [Profit DB]


create database [Profit DB]

use [profit db]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);


SELECT * FROM ProfitData

-- to add a new column that shows next month's profit for each product:
SELECT *, LEAD(Profit) OVER(PARTITION BY product ORDER BY monthnumber)
FROM ProfitData

-- we dont want product column in the output but we want each 
-- months total profit to be shown by month num and month name
-- also a new colm should be added to show next months total profit
SELECT MonthName, MonthNumber, sum(Profit) [totalprofit], 
LEAD(SUM(Profit)) OVER(ORDER BY monthnumber ASC) [nextmonthprofit]
FROM ProfitData GROUP BY MonthName, MonthNumber 
ORDER BY MonthNumber



-- LAG() function:
-- to add a new column that shows previous month's profit for each product:
SELECT *, LAG(Profit) OVER(PARTITION BY product ORDER BY monthnumber) [prev month profit] 
FROM ProfitData

-- we dont want product column in the output but we want each 
-- months total profit to be shown by month num and month name
-- also a new colm should be added to show previous months total profit

SELECT MonthName, MonthNumber, SUM(Profit) [total profit],
LAG(SUM(Profit)) OVER(ORDER BY monthnumber ASC) [prevmonthsale]
FROM ProfitData GROUP BY MonthName, MonthNumber
ORDER BY MonthNumber