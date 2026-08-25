SELECT * FROM table1
SELECT * FROM table2




SELECT * FROM table1 as a RIGHT JOIN table2 as b
ON a.c1=b.c1

SELECT a.c1,a.c2,b.c3 FROM table1 as a RIGHT JOIN table2 as b
ON a.c1=b.c1

SELECT * from table1 as a LEFT OUTER join table2 as b on a.c1=b.c1