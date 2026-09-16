create database student
create table student_details(
    StudentName nvarchar(256),
    Gender char(1),
    Age tinyint,
    EventDate date,
    distance decimal(5,2)
)

insert into student_details(StudentName, Gender, Age, EventDate, distance)
values
('Raj Mehra', 'M', 25, '2024-08-3', 123.11),
('mpnica', 'M', 28, '2023-04-04', 333.44)
-- drop table student_details
SELECT * FROM student_details

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME like 'student_details'

insert into student_details(StudentName, Gender)
VALUES('Priya', 'F')


insert into student_details(Age, EventDate)
values('34', '2022-08-04'),
(43, '2019-01-01'),
(19, '2022-08-08')

-- data type of column age is tinyint(0 to 255)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'
insert into student_details(Age)
VALUES(256)



