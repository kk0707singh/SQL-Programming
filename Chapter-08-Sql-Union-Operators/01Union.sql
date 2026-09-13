
DROP TABLE IF EXISTS append1;
DROP TABLE IF EXISTS append2;


create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)

SELECT * 
FROM append1;

SELECT * 
FROM append2;

SELECT * FROM append1 
UNION ALL
SELECT * FROM append2

SELECT * FROM append1
UNION
SELECT * FROM append2


-- number of column present in the select list have to be same
-- data types of the col have to be same 
-- order in which col. are written has to be the same

-- when the no of columns are not same will throw an error
SELECT c1,c2,c3 FROM append1
UNION
SELECT c2,c3 FROM append2

-- alias names which are specified in first select statment will be assigned to the columns
SELECT c1 [col1], c2 [col2], c3 [col3] FROM append1
UNION
SELECT c1 [colm1], c2[colm2], c3 [colm3] FROM append2