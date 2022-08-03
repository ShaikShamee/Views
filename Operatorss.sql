use BhavnaCrop
create Table Orders_Table (OrdID int,OrdNumber varchar(50),OrdDate datetime,Quantity numeric(2,0))

drop Table Orders_Table
alter Table Orders_Table add CustID int

alter Table Orders_Table add Amount money

alter Table Orders_Table alter column OrdNumber numeric(18,0) 

alter Table Orders_Table alter column OrdDate datetime

sp_help Orders_Table

select * from Orders_Table

--drop table Orders_Table

insert into Orders_Table values(21,23456,22/07/2021,1,11,2000),
(22,23456890000,15/09/2021,3,12,5000),
(23,23456900000,23/05/2021,4,15,6000),
(24,23456656754,15/06/2022,2,13,7000),
(25,234566556544,03/07/2022,2,12,3000),
(26,234565433567,12/09/2021,1,11,9000),
(27,234566777786,28/04/2021,1,14,10000)

Create Table Account_Table(ActID int ,ActName varchar(50),ActNumber numeric(18,0),ActType varchar(50),CustID int)

drop Table Account_Table

alter Table Account_Table Drop column ActID

alter Table Account_Table add  Amount money

insert into Account_Table values('seema',4378905432190,'SB',11,1900),
('seema',4378905432190,'ICIC',12,2500),
('sunitha',3789054321906,'HDFC',13,2600),
('renuka',7890543219043,'INDUS',14,2700),
('raji',8378905432190,'HSBC',11,3500),
('sreenu',9378905432190,'AXIS',15,3300),
('sailaja',6378905432190,'YES',17,3400),
('panathi',5378905432190,'SB',16,4500)

SELECT * FROM Account_Table



SELECT CustID,Amount FROM Account_Table
UNION
SELECT CustID ,Amount FROM Orders_Table

SELECT CustID,Amount FROM Account_Table
UNION ALL
SELECT CustID,Amount FROM Orders_Table

SELECT* FROM Account_Table
INERSECT
SELECT * FROM Orders_Table

SELECT CustID,Amount FROM Account_Table
EXCEPT
SELECT CustID,Amount FROM Orders_Table


SELECT *FROM Account_Table WHERE Amount IS NULL