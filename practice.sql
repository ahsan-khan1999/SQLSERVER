select * from somedata
select * from mydata
select somedata.Pname from somedata
select somedata.nic,somedata.age,somedata.Pname from somedata left join mydata on somedata.Pid=mydata.Pid 
select somedata.Pid ,somedata.Pname from somedata,mydata


create table SData(
S_ID int identity(0,1) not null ,
Mobile_Num bigint not null
)
select * from SData
insert into SData(Mobile_Num) values(12345678)
delete from SData where S_ID =1
Set identity_insert SData on
insert into SData(S_ID,Mobile_Num) values(1,1234567823)
insert into SData(Mobile_Num) values(123456783)
insert into SData(Mobile_Num) values(12345675)
insert into SData(Mobile_Num) values(12345677)
insert into SData(Mobile_Num) values(12345679)
insert into SData(Mobile_Num) values(12345670)

select S_ID as 'ID' from dbo.SData
select S_ID ,Mobile_Num into Dates from SData
select * from Dates
alter table SData
add ID int identity(0,1) not null primary key 