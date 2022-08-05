use BhavnaCrop
SELECT * FROM fashion_Brand_Table1

Create table fashion_Brand_Table_f(bdId int  identity(1,1),bdName  varchar(50) primary key,bdQuality char(10))

Create  procedure  Brand_Insert_bi(@bdName varchar(50),@bdQuality char(10))
as
begin 
insert into fashion_Brand_Table_f(bdName,bdQuality) values(@bdName,@bdQuality)
end
exec Brand_Insert_bi @bdName='GUCCI', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='ZARA', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='ADIDAS', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='NIKE', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='LEVIS', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='PUMA', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='REEBOK', @bdQuality='GOOD'
exec Brand_Insert_bi @bdName='LEE', @bdQuality='GOOD'

create proc Brand_select_bs
as
begin
select * from fashion_Brand_Table_f
end

exec Brand_select_bs

Create table Celebrity_Table_ce(cid int identity(100,2) ,cname varchar(50)  primary key,cnumber numeric(10),bdName varchar(50) foreign key references fashion_Brand_Table_f(bdName))

CREATE PROC Celebrity_Insert_cs(@cname varchar(50),@cnumber char(10),@bdName varchar(50))
as
begin 
insert into Celebrity_Table_ce(cname,cnumber,bdName) values(@cname,@cnumber,@bdName)
end

exec Celebrity_Insert_cs @cname='SHIN MIN', @cnumber=9807654321,@bdName='GUCCI'
exec Celebrity_Insert_cs @cname='SHAHRU KHAN',@cnumber=7890654321,@bdName='ZARA'
exec Celebrity_Insert_cs @cname='YURAJ SINGH',@cnumber=9087654321,@bdName='ADIDAS'
exec Celebrity_Insert_cs @cname='KATRINA KAIF',@cnumber=8760456321,@bdName='NIKE'
exec Celebrity_Insert_cs @cname='DEEPIKA PADUKONE',@cnumber=9065432189,@bdName='LEVIS'
exec Celebrity_Insert_cs @cname='MANIKA BATRA',@cnumber=6578907564,@bdName='PUMA'
exec Celebrity_Insert_cs @cname='LARA DUTTA',@cnumber=5678907653,@bdName='REEBOK'
exec Celebrity_Insert_cs @cname='JACKIE',@cnumber=7890567432,@bdName='LEE'

create proc Celebrity_select_b
as
begin
select * from Celebrity_Table_ce
end

exec Celebrity_select_b

create table Endorsement_Table_s(EdId int primary key identity(11,1),cname varchar(50)  FOREIGN KEY REFERENCES Celebrity_Table_ce(cname),bdName varchar(50) FOREIGN KEY REFERENCES fashion_Brand_Table_f(bdName))

CREATE PROC Endorsement_Insert_sp(@bdName varchar(50),@cname varchar(50))
as
begin 
insert into Endorsement_Table_s(bdName,cname) values(@bdName,@cname)
end
exec Endorsement_Insert_sp @bdName='GUCCI',@cname='SHIN MIN'
exec Endorsement_Insert_sp  @bdName='ZARA',@cname='SHAHRU KHAN'
exec Endorsement_Insert_sp @bdName='ADIDAS',@cname='YURAJ SINGH'
exec Endorsement_Insert_sp @bdName='NIKE',@cname='KATRINA KAIF'
exec Endorsement_Insert_sp @bdName='LEVIS',@cname='DEEPIKA PADUKONE'
exec Endorsement_Insert_sp @bdName='PUMA',@cname='MANIKA BATRA'
exec Endorsement_Insert_sp @bdName='REEBOK',@cname='LARA DUTTA'
exec Endorsement_Insert_sp @bdName='LEE',@cname='JACKIE'

create proc Endorsement_select_sp
as
begin
select * from Endorsement_Table_s
end

exec Endorsement_select_sp


create procedure sp_No_Edorsement
as
begin
select c.cname from Endorsement_Table_s as e
right join Celebrity_Table_ce as c
on e.cname=c.cname
where e.cname is null
end

exec sp_No_Edorsement

create procedure sp_No_Brands
as
begin
select b.bdName from Endorsement_Table_s as e
right join fashion_Brand_Table_f  as b
on e.bdName=b.bdName 
where e.bdName is null
end

exec sp_No_Brands


create procedure sp_Common_Celebrities
as
begin
select c.cname from Endorsement_Table_s as e
inner join Celebrity_Table_ce  as c
on e.cname=c.cname
group by c.cname
end

exec sp_Common_Celebrities
