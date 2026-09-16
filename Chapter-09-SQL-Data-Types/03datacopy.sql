-- copying data from one/existing table to another table
-- case1: the new table simply does'nt exists
-- case2: the new table stucture/new table may exists

-- case1:
SELECT * FROM dbo.sales

-- all columns were copied from existing table
-- this statement will result in the creation of newtble1 which will be having structure and records both same as that of dbo.sales table
-- when we only want to copy specific columns


SELECT * into newtble1 from Sales
-- certain columns to be copied
drop table newtble1

SELECT ProductID, Quantity into newtble_1 FROM Sales
SELECT * FROM newtble_1



-- case2: new table structure/table already exists
SELECT top 0 * into newtble_2 from dbo.Sales   --%%%%%%%%%%%%%%%%%%same
SELECT * FROM newtble_2
insert into newtble_2 SELECT * FROM dbo.Sales


-- copying certain column
SELECT * into newtble_3 FROM Sales where 1=0  --%%%%%%%%%%%%%%%%same
SELECT * FROM newtble_3
insert into newtble_3(ProductID, SaleDate) SELECT ProductID, SaleDate from Sales