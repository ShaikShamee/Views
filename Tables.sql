use BhavnaCrop

Create Table Personal_Table(PID int primary key identity(1,1),PNAME varchar(50),PEmail varchar(50),PNumber numeric(18,0),PAddress varchar(50))

insert into Personal_Table Values('rama','rama123@gmail.com',9087906543,'Guntur'),
('raju','raju123@gmail.com',6087906543,'vizag'),
('ravi','ravi123@gmail.com',8987906543,'hyd'),
('sai','sai123@gmail.com',9287906543,'Anathapur'),
('janu','janu123@gmail.com',8767906543,'UP'),
('sailaja','saila123@gmail.com',74087906543,'HP'),
('rani','rani123@gmail.com',7687906543,'Delhi')

Select * from Personal_Table

Create Table Offical_Table(OffID int Primary key identity(100,1), OffNumber numeric(18),OffAddress varchar(50))

ALTER tABLE Offical_Table add  PID INT

insert into Offical_Table Values(9076534212,'12-A',1),
(8076534212,'13-B',2),
(7076534212,'14-D',3),
(6076534212,'15-C',5),
(5076534212,'19-D',6),
(4076534212,'20-c',4)

select * from Offical_Table

Create Table Salary_Table(HRA NUMERIC(5,2),Salary money ,PID int)

insert into Salary_Table values(12.5,15000,2)
insert into Salary_Table values(2.5,22000,4)
insert into Salary_Table values(2.5,27000,5)
insert into Salary_Table values(3.5,35000,3)
insert into Salary_Table values(1.5,37000,6)
insert into Salary_Table values(0.5,38000,4)

select * from Salary_Table