USE BhavnaCrop

Create Table Customer(id INT primary key identity(1,1) ,name varchar(50),email varchar(50))

Alter Table Customer drop CONSTRAINT PK__Customer__3213E83F73401AB6

drop Table Customer

create Table Product(pid int primary key identity(11,1),pname varchar(50))

drop Table Product

ALTER TABLE Product DROP CONSTRAINT FK__Product__id__7A672E12

create Table Orderr(oid int primary key identity(21,1),oNumber numeric(16,0),id int Foreign key references Customer(id))

Alter Table Orderr drop CONSTRAINT FK__Orderr__pid__02FC7413

drop Table Orderr

insert into Customer(name,email) Values('sita','sita12@gmail.com')
insert into Customer(name,email) Values('devi','sita12@gmail.com')
insert into Customer(name,email) Values('ramesh','sita12@gmail.com')
insert into Customer(name,email) Values('suresh','sita12@gmail.com')
insert into Customer(name,email) Values('surya','sita12@gmail.com')
insert into Customer(name,email) Values('renuka','sita12@gmail.com')
insert into Customer(name,email) Values('raju','sita12@gmail.com')


select * from Customer

insert into Product(pname) Values('Nike Shoes')

ALTER TABLE Product
DROP Constraint FK__Product__id__0E6E26BF
GO

ALTER TABLE Product
ADD CONSTRAINT FOREIGN KEY (id) REFERENCES Customer(id)
ON DELETE CASCADE ON UPDATE CASCADE
GO 

update Product set id=30 where pid=11
select * from Product

