use BhavnaCrop
Create table fashion_Brand_Table_fbt(bdId int primary key identity(1,1),bdName varchar(50),bdQuality char(10))
Create table fashion_Brand_Logs(logid int primary key identity,bdId int foreign key references fashion_Brand_Table_fbt(bdId),Updatedate datetime,Status char(10))

----------triggers

--insert trigger

create trigger Brand_Insert_Trigeer
on fashion_Brand_Table_fbt
for insert
as
insert into fashion_Brand_Logs(bdId,Status,Updatedate)
select bdId,'ALLOW',GETDATE()
from inserted

insert into fashion_Brand_Table_fbt(bdName) values('Louis Vuitton')

select * from fashion_Brand_Table_fbt

--update trigger

create trigger update_Brand_Trigger
on fashion_Brand_Table_fbt
after update
as
insert into fashion_Brand_Logs(bdId,Status,Updatedate)
select bdId,'ALLOW',GETDATE()
from deleted

update fashion_Brand_Table_fbt set bdName='Amazon' where bdId=1

----deletetrigger
create trigger Delete_Brand
on fashion_Brand_Table_fbt
instead of delete
as
insert into fashion_Brand_Logs(bdId,Status,Updatedate)
select bdId,'ALLOW',GETDATE()
from deleted

delete  from fashion_Brand_Table_fbt where bdId=1