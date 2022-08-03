Use BhavnaCrop

create Table Products_Table(ProdID int ,ProdName varchar(50),ProdType varchar(50),ProdPrice numeric(18,0))

alter Table Products_Table add CustID int

insert into Products_Table Values(30,'Watch','Electronics',15000,11),
(31,'Camera','Electronics',85000,12),
(32,'HeadPhones','Electronics',2000,13),
(33,'Washing Machine','Electronics',10000,14),
(34,'Samsung Phone','Electronics',25000,15),
(35,'Bluetooth','Electronics',5000,12),
(36,'LapTop','Electronics',75000,16)

select * from  Products_Table


--==========Comparision Operators========

SELECT * FROM Products_Table WHERE  ProdPrice= 85000

SELECT * FROM Products_Table WHERE  ProdPrice< 85000

SELECT * FROM Products_Table WHERE ProdPrice > 75000

SELECT * FROM Products_Table WHERE ProdPrice <> 15000

SELECT * FROM Products_Table WHERE ProdPrice !=15000

SELECT * FROM Products_Table WHERE ProdPrice <= 10000

SELECT * FROM Products_Table WHERE ProdPrice >= 25000


create Table Customer_Table (CustID int primary key,CustName varchar(50),CustAddress varchar(50),CustMail varchar(50),CustPhone numeric(15))

insert into Customer_Table values(11,'seema','Hyd','seema498@gmail.com',7890654321),
(12,'sanju','Hyd','sanju49@gmail.com',7890654321),
(13,'reema','Hyd','reema98@gmail.com',7890654321),
(14,'renuka','Andhra','renuka48@gmail.com',7890654321),
(15,'anusha','Andhra','anusha8@gmail.com',7890654321),
(16,'devi','Hyd','devi98@gmail.com',7890654321),
(17,'sandhaya','Andhra','sandhaya498@gmail.com',7890654321)

--===============Logical Operators=========
select* from Customer_Table

SELECT * FROM Customer_Table WHERE CustAddress = 'Hyd' AND CustName='sanju'

SELECT CustAddress,CustName FROM Customer_Table WHERE  CustID IN (11,12)

SELECT * FROM Products_Table WHERE ProdPrice BETWEEN 15000 AND 75000

SELECT * FROM Customer_Table WHERE CustMail = 'seema498@gmail.com' OR CustAddress='Hyd'

SELECT CustName FROM Customer_Table as c  WHERE EXISTS (SELECT ProdName FROM Products_Table as p WHERE  p.CustID=c.CustID AND ProdPrice < 15000)

SELECT * FROM Customer_Table WHERE CustName LIKE 's%'

SELECT * FROM Customer_Table WHERE CustName LIKE '%a%'

SELECT * FROM Customer_Table WHERE CustName LIKE '%a'

SELECT * FROM Customer_Table WHERE CustName NOT LIKE 's%'

