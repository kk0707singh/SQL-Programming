-- primary key constraints:

-- case1: new table is to be created:
CREATE TABLE test_pk_1(
    eid INT PRIMARY KEY,
    gender char(1),
    age TINYINT,
    firstname varchar(256)
)

insert into test_pk_1 values(1,'M',23,'Myank')
SELECT * FROM test_pk_1

truncate table test_pk_1
-- case2: table already exists:
alter table test_pk_1
add primary key (age)