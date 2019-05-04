create database Aptach
use Aptach
create user newuser for login testuser

revoke select on STUDENT to newuser
create table STUDENT
(
Num int not null,
FirstName varchar(50) not null,
LastName varchar(50) not null,
DOB int not null,
Age int not null)
insert into STUDENT values(1,'Muhammad','Ahsan','25-12-2000',10)
insert into STUDENT values(2,'Muhammad','Afzal','25-11-2009',11)
insert into STUDENT values(3,'Muhammad','Kaleem','25-12-2008',12)
insert into STUDENT values(4,'Muhammad','Haleem','25-1-2010',13)
insert into STUDENT values(5,'Muhammad','Hasnain','25-2-1999',14)
insert into STUDENT values(6,'Muhammad','Ayub','25-5-2000',15)
insert into STUDENT values(7,'Muhammad','Aslam','25-4-2002',16)
insert into STUDENT values(8,'Muhammad','Akram','25-6-2001',17)
select * from STUDENT
delete from STUDENT where Num between 1 and 5
insert into STUDENT values(1,'Muhammad','Afzal',2009,11)
insert into STUDENT values(2,'Muhammad','ahsan',2009,11)
insert into STUDENT values(3,'haris','hassan',2008,12)
insert into STUDENT values(4,'suffiyan','ahmed',2010,13)
insert into STUDENT values(5,'Muhammad','hasnain',1999,14)
insert into STUDENT values(6,'Muhammad','hassan',2000,15)
insert into STUDENT values(7,'saif','hassan',2002,16)
insert into STUDENT values(8,'syed','yousf',2001,17)

update STUDENT
set LastName='Ikram',Age=11
where Num = 1
alter table STUDENT
ADD Email varchar(50) 
SELECT Floor((CAST (GetDate() AS INTEGER) - CAST(DOB AS INTEGER)) / 365.25) AS Age
