-- unique constraints
-- it ensures that a column consists of unique values


-- case1: when the table already exists
alter Table testunique
add UNIQUE (lastname)

-- case2: we need to create the table
create table testunique(
    SID int unique,
    age TINYINT not null,
    firstname VARCHAR(256) not null unique,
    lastname varchar(256)
)

insert into testunique values(1,22,'Myank', 'Mehra')
insert into testunique values(null,23,'Myankiya', 'Mehra')

SELECT * FROM testunique
truncate table testunique