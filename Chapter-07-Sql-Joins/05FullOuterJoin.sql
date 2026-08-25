SELECT * FROM table1
SELECT * FROM table2

SELECT * FROM table1 as a FULL OUTER JOIN table2 as b ON
a.c1 = b.c1



SELECT a.c1,a.c2,b.c3 FROM table1 as a FULL OUTER JOIN table2 as b ON
a.c1 = b.c1