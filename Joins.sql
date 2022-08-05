use BhavnaCrop

Create table fashion_Brand_Table(bdId int primary key identity(1,1),bdName varchar(50),bdQuality char(10))

insert into fashion_Brand_Table values('GUCCI','GOOD'),
('ZARA','GOOD'),
('ADIDAS','AVERAGE'),
('NIKE','GOOD'),
('LEVIS','GOOD'),
('PUMA','AVERAGE'),
('REEBOK','AVERAGE'),
('LEE','AVERAGE')

SELECT * FROM fashion_Brand_Table

Create table Celebrity_Table(cid int primary key identity(100,2) ,cname varchar(50),cnumber numeric(10),bdId int foreign key references fashion_Brand_Table(bdId))

insert into Celebrity_Table values('SHIN MIN',9807654321,1),
('SHAHRU KHAN',7890654321,4),
('YURAJ SINGH',9087654321,6),
('KATRINA KAIF',8760456321,7),
('DEEPIKA PADUKONE',9065432189,5),
('MANIKA BATRA',6578907564,3),
('LARA DUTTA',5678907653,2),
('JACKIE',7890567432,8)

SELECT * FROM Celebrity_Table

Create table Endorsement_Table(EndId int primary key identity(11,1),cid int,bdId int,Constraint fk_celebrity_cid FOREIGN KEY (cid) REFERENCES celebrity_Table(cid),Constraint fk_brand_bdId FOREIGN KEY (bdId) REFERENCES fashion_Brand_Table(bdId))

insert into Endorsement_Table values(100,1),
(102,2),
(106,1),
(104,3),
(108,4),
(110,7),
(112,8),
(114,6)
select * from Endorsement_Table

-----inner join---
select fbt.bdQuality,fbt.bdName ,ct.cname,ct.cnumber from fashion_Brand_Table as fbt inner join Celebrity_Table as ct 
on fbt.bdId=ct.bdId

select fbt.bdQuality,fbt.bdName ,et.EndId,et.cid from fashion_Brand_Table as fbt inner join Endorsement_Table as et
on fbt.bdId=et.bdId

---left join--

select fbt.bdQuality,fbt.bdName ,ct.cname,ct.cnumber from fashion_Brand_Table as fbt left join Celebrity_Table as ct 
on fbt.bdId=ct.bdId

select fbt.bdQuality,fbt.bdName ,et.EndId,et.cid from fashion_Brand_Table as fbt left join Endorsement_Table as et
on fbt.bdId=et.bdId
---right join --
select fbt.bdQuality,fbt.bdName ,ct.cname,ct.cnumber from fashion_Brand_Table as fbt right join Celebrity_Table as ct 
on fbt.bdId=ct.bdId

select fbt.bdQuality,fbt.bdName ,et.EndId,et.cid from fashion_Brand_Table as fbt right join Endorsement_Table as et
on fbt.bdId=et.bdId

----fullOuter join---

select fbt.bdQuality,fbt.bdName ,ct.cname,ct.cnumber from fashion_Brand_Table as fbt full join Celebrity_Table as ct 
on fbt.bdId=ct.bdId

select fbt.bdQuality,fbt.bdName ,et.EndId,et.cid from fashion_Brand_Table as fbt full join Endorsement_Table as et
on fbt.bdId=et.bdId