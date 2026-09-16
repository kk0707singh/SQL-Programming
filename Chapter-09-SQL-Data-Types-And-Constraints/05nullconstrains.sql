-- constraints
-- conditions that can be applied on cols of a table & these conditions are to be followed while
-- inserting records into the table
-- not null constraints


create database constraints
use constraints


-- case1: we will have to create new table
create table testnotnull(
    Eid int not NULL,
    age TINYINT,
    firstname varchar(256),
)
insert into testnotnull values(1,23,'Mayank')
insert into testnotnull values (null, 23, 'Mayank')
insert into testnotnull values(1,null,'Maynk')
SELECT * FROM testnotnull



-- case2: the table already exists
-- we want to make first name column nullable
alter table testnotnull
alter COLUMN firstname varchar(256) not null
INSERT into testnotnull values (21,34, NULL)

alter table testnotnull
alter column age TINYINT not NULL