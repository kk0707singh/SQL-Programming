SELECT * FROM table1
SELECT * FROM table2


-- left anti joins:
SELECT * FROM table1 as a LEFT JOIN table2 as b 
ON a.c1=b.c1
WHERE b.c3 is NULL


-- right anti join:
SELECT * FROM table1 as a RIGHT JOIN table2 as b 
ON a.c1=b.c1
WHERE a.C1 is NULL