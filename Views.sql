use BhavnaCrop

create Table Customer_Table (CustID int primary key,CustName varchar(50),CustAddress varchar(50),CustMail varchar(50),CustPhone varchar(50))

alter table Customer_Table alter column CustPhone numeric(18,0)

select * from Customer_Table

sp_help Customer_Table

insert into Customer_Table values(11,'seema','Hyd','seema498@gmail.com',7890654321),
(12,'sanju','Hyd','sanju49@gmail.com',7890654321),
(13,'reema','Hyd','reema98@gmail.com',7890654321),
(14,'renuka','Andhra','renuka48@gmail.com',7890654321),
(15,'anusha','Andhra','anusha8@gmail.com',7890654321),
(16,'devi','Hyd','devi98@gmail.com',7890654321),
(17,'sandhaya','Andhra','sandhaya498@gmail.com',7890654321)


create Table Orders_Table (OrdID int,OrdNumber varchar(50),OrdDate varchar(50),Quantity numeric(2,0))

alter Table Orders_Table add CustID int

alter Table Orders_Table alter column OrdNumber numeric(18,0) 

sp_help Orders_Table

select * from Orders_Table

drop table Orders_Table

insert into Orders_Table values(21,23456,'22/07/2021',1,11),
(22,23456890000,'15/09/2021',3,12),
(23,23456900000,'23/05/2021',4,15),
(24,23456656754,'15/06/2022',2,13),
(25,234566556544,'03/07/2022',2,12),
(26,234565433567,'12/09/2021',1,11),
(27,234566777786,'28/04/2021',1,14)

create Table Products_Table(ProdID int ,ProdName varchar(50),ProdType varchar(50),ProdPrice numeric(18,0))

alter Table Products_Table add CustID int

insert into Products_Table Values(30,'Watch','Electronics',15000,11),
(31,'Camera','Electronics',85000,12),
(32,'HeadPhones','Electronics',2000,13),
(33,'Washing Machine','Electronics',10000,14),
(34,'Samsung Phone','Electronics',25000,15),
(35,'Bluetooth','Electronics',5000,12),
(36,'LapTop','Electronics',75000,16)

update Products_Table set ProdName='Ipad' where CustID=13
 
 drop Table Products_Table

select * from Products_Table

Create Table Account_Table(ActID int ,ActName varchar(50),ActNumber numeric(18,0),ActType varchar(50),CustID int)

alter Table Account_Table Drop column ActID

insert into Account_Table values('seema',4378905432190,'SB',11),
('seema',4378905432190,'ICIC',12),
('sunitha',3789054321906,'HDFC',13),
('renuka',7890543219043,'INDUS',14),
('raji',8378905432190,'HSBC',11),
('sreenu',9378905432190,'AXIS',15),
('sailaja',6378905432190,'YES',17),
('panathi',5378905432190,'SB',16)

SELECT * FROM Account_Table

create View Customer_View
as
select c.CustName,c.CustMail,c.CustAddress,c.CustPhone,o.OrdNumber,o.OrdDate,o.OrdID from Customer_Table as c
inner join Orders_Table as o
on c.CustID=o.CustID

select * from Customer_View


create View Orders_View
as
select c.CustName,c.CustMail,c.CustPhone, o.OrdNumber,o.OrdDate from Orders_Table as o
inner join Customer_Table as c
on o.CustID=c.CustID

select * from Orders_View

create View Products_View
as
select  p.ProdID,p.ProdName,p.ProdType,p.ProdPrice from Products_Table as p  inner join Customer_Table as c 

on p.CustID=c.CustID

alter View Products_View
as
select  p.ProdID,p.ProdName,p.ProdType,p.ProdPrice,c.CustName,c.CustAddress,c.CustMail from Products_Table as p  inner join Customer_Table as c 

on p.CustID=c.CustID

select * from Products_View

Create View Product_View 
as
select p.ProdID,p.ProdType,p.ProdPrice,o.OrdID,o.OrdDate,o.OrdNumber from Products_Table  as p inner join Orders_Table as o
on p.CustID=o.CustID


delete from Product_View where ProdID=33

--View or function 'Product_View' is not updatable because the modification affects multiple base tables.

update Product_View set ProdType='Home Appliances' where ProdID=33

update Product_View set OrdID=28 where ProdID=33

select * from Product_View

Create view Account_View 
as
select a.ActName,a.ActNumber,a.ActType,c.CustMail,c.CustAddress,c.CustPhone from Account_Table as a inner join Customer_Table as c 
on a.CustID =c.CustID

select * from Account_View
