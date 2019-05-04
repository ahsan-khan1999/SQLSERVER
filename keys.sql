create database Test
use Test

create table somedata(
Pid int not null Primary Key,
Pname Varchar(50) not null,
age int not null,
nic int not null 
)
create table mydata(
id int not null,
Pid int
)
create table University(
nam varchar(50) not null,
id int not null primary key,
Pid int not null,
Foreign key (Pid) references somedata(Pid) 
)
select * from University

select * from somedata
select age,Pname,nic from somedata
order by 1 desc
select * from mydata
insert into somedata(Pid,Pname,age,nic) values(1,'ahsan',20,12045)
insert into somedata(Pid,Pname,age,nic) values(2,'ahsankhan',20,2212045)
insert into somedata(Pid,Pname,age,nic) values(3,'ahsankhan',20,2212045)
insert into somedata(Pid,Pname,age,nic) values(4,'ahsankhan',18,2212045)
insert into mydata(id,Pid) values (12,1)
insert into mydata(id,Pid) values (122,1)
insert into mydata(id,Pid) values (133,4)
insert into University(nam,id,Pid) values ('maju',133,1)
delete from mydata where id=133

select * from somedata 
where age between 18 and 20
order by 4 desc

 select * from somedata 
where age In(18)
order by 1 desc



ALTER TABLE mydata
ADD CONSTRAINT FK_Pid
FOREIGN KEY (Pid) REFERENCES somedata(Pid);

alter table somedata
add sids int;
alter table somedata
add unique(Pname);


drop table mydata
