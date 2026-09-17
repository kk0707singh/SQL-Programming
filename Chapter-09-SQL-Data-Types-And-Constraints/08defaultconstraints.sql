-- default constraints 
-- this constraints to provide default value to colmn

-- case1: table not exists
CREATE table test_default(
    eid int DEFAULT 5,
    firstname varchar(256) default 'Rohit',
    lastname varchar(256),
    age TINYINT
)
insert into test_default values(1, 'nitya', 'jain', 23)
insert into test_default(lastname, age) values('singh', 23)

SELECT * FROM test_default
-- case2: table exists:
alter TABLE test_default
add DEFAULT 25 for age

insert into test_default(lastname) values('jain')

