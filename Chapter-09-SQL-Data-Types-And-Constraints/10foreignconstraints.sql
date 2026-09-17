-- foriegn key constraints:
-- case1: new table has to be created
create table test_pk(
id int primary key,
name varchar(256)
)
INSERT INTO test_pk VALUES(1, 'myank'),(2,'raj'),(3,'yash')
SELECT * FROM test_pk

create table test_fk(
    id int FOREIGN KEY REFERENCES test_pk(id),
    coursename varchar(256)
)
insert into test_fk values(1,'a'),(null,'b')
SELECT * FROM test_fk


-- case2:table already exists:
create table fk2(id int, course varchar(256))
alter table fk2
add Foreign Key (id) REFERENCES test_pk(id)