-- check constraints
-- checks for certain condition that can be applied on the cols of the table,
-- if this condition fails will not be able to insert the record into the table 



-- case1: table doesnt exists
CREATE Table test_check(
    eid int,
    firstname varchar(256),
    age TINYINT check(age>=10)
)
INSERT into test_check VALUES(1, 'Myank', 20)
SELECT * FROM test_check


update test_check set eid = 11 where eid = 1
-- case2: table exists
ALTER TABLE test_check
add check(eid>5)
