

use [Sales Database]

--Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')



SELECT * from table1
SELECT * from table2
SELECT * FROM table1 INNER JOIN table2
on table1.c1 = table2.C1



SELECT table1.c1, table1.c2, table2.C3 FROM table1 INNER JOIN table2
on table1.c1 = table2.C1


SELECT a.c1, a.c2, b.c3 FROM table1 as a 
inner join table2 as b 
ON a.c1 = b.C1


SELECT a.c1, a.c2, b.c3 FROM table1 as a 
join table2 as b 
ON a.c1 = b.C1