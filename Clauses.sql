Use BhavnaCrop

drop Table Products_Table

create Table Products_Table(ProdID int ,ProdName varchar(50),ProdType varchar(50),ProdPrice numeric(18,0),CustID int)

insert into Products_Table Values(30,'Watch','Electronics',15000,11),
(31,'Camera','Electronics',85000,12),
(32,'HeadPhones','Electronics',2000,13),
(33,'Washing Machine','Electronics',10000,14),
(34,'Samsung Phone','Electronics',25000,15),
(35,'Bluetooth','Electronics',5000,12),
(36,'LapTop','Electronics',75000,16)

select * from  Products_Table

drop Table Customer_Table

create Table Customer_Table (CustID int primary key,CustName varchar(50),CustAddress varchar(50),CustMail varchar(50),CustPhone numeric(15))

insert into Customer_Table values(11,'seema','Hyd','seema498@gmail.com',7890654321),
(12,'sanju','Hyd','sanju49@gmail.com',7890654321),
(13,'reema','Hyd','reema98@gmail.com',7890654321),
(14,'renuka','Andhra','renuka48@gmail.com',7890654321),
(15,'anusha','Andhra','anusha8@gmail.com',7890654321),
(16,'devi','Hyd','devi98@gmail.com',7890654321),
(17,'sandhaya','Andhra','sandhaya498@gmail.com',7890654321)

select* from Customer_Table

SELECT COUNT(CustName)
FROM Customer_Table
WHERE CustAddress='Hyd'

drop Table Orders_Table

create Table Orders_Table (OrdID int,OrdNumber varchar(50),OrdDate datetime,Quantity numeric(2,0),CustID int ,Amount money)

insert into Orders_Table values(21,23456099999,22/07/2021,1,11,15000),
(22,23456890000,15/09/2021,3,12,35000),
(23,23456900000,23/05/2021,4,15,45000),
(24,23456656754,15/06/2022,2,13,15000),
(25,234566556544,03/07/2022,2,12,16000),
(26,234565433567,12/09/2021,1,11,17000),
(27,234566777786,28/04/2021,1,14,19000)

SELECT AVG(Amount)
FROM Orders_Table
WHERE CustID=11

SELECT SUM(Amount)
FROM Orders_Table
WHERE CustID=12


SELECT * FROM Customer_Table
ORDER BY CustAddress

SELECT * FROM Customer_Table
ORDER BY CustAddress desc

SELECT * FROM Customer_Table
ORDER BY CustAddress , CustName DESC

SELECT COUNT(CustID), CustAddress
FROM Customer_Table
GROUP BY CustAddress

SELECT COUNT(CustID), CustAddress
FROM Customer_Table
GROUP BY CustAddress
ORDER BY COUNT(CustID) DESC



SELECT COUNT(CustID), CustAddress
FROM Customer_Table
GROUP BY CustAddress
HAVING COUNT(CustID) < 4


