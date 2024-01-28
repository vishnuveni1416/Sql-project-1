Create database RainbowSchool;
Use RainbowSchool;

create table classes (
classId int primary key,
ClassName varchar(50)
);

create table Subjects(
SubjectId int primary key,
SubjectName varchar(50)
);

create table students(
StudentId int primary key,
FirstName varchar(50),
LastName varchar(50),
ClassId int
);

insert into classes (classId, ClassName) values
(1, 'Class 1'),
(2, 'Class 2'),
(3, 'Class 3');

select * from classes;

insert into subjects (SubjectId, SubjectName) values
(201, 'Biology'),
(202, 'Maths'),
(203, 'Chemistry');

select * from subjects;

insert into students (StudentId, FirstName, LastName, ClassId) values
(1, 'allu', 'arjun', 1),
(2, 'madhu', 'priya', 2),
(3, 'sri', 'ram', 2),
(4, 'ram', 'charan', 3);


select * from students;

create index IX_Students_ClaasId on Students (ClassId);
create index IX_Students_LastName on Students (LastName);
create index IX_Students_SubjectName on Subjects (SubjectName);