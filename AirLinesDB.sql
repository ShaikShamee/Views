Create Database TourandTravel
Use TourandTravel

Create Table Flights_Details(FlghtId int primary key identity,FlghtName varchar(50),FlghtTime DateTime,FlghtDestination varchar(50))	

Create Table Passengers_Travel(PassengerId int primary key identity ,PassengersName varchar(50),PassengersDestination varchar(50),PassengersAge numeric(10,0),PassengersPhone numeric(18,0),FlghtId int foreign key references Flights_Details(FlghtId))

Create Table TicketBooking_Details(TickId int,TickDate varchar(50),FlghtId int foreign key references Flights_Details(FlghtId),PassengerId int foreign key references Passengers_Travel(PassengerId))


insert into Flights_Details values('Indigo', 22/08/22022  ,'Mumbai')
insert into Flights_Details values('AirIndia',27/10/2022 ,'Jaipur')
insert into Flights_Details values('SpiceJet',25/11/2022 ,'Bangalore')
insert into Flights_Details values('GoFirst',26/08/2022 , 'Raipur')
insert into Flights_Details values('AirAisa India',27/09/2022 ,'Delhi')
insert into Flights_Details values('Vistira', 24/12/2022 , 'Jaipur')
insert into Flights_Details values('JetAirWays', 25/11/2022 , 'Lucknow')
insert into Flights_Details values('Indian AirLines', 19/12/2022 , 'Gandhinagar')

select* from Flights_Details

insert into Passengers_Travel values('seema' ,'Mumbai',25,7890654321,2)
insert into Passengers_Travel values('ramesh','Jaipur',29,78906443321,3)
insert into Passengers_Travel values('ravi','Bangalore',33,8907654321,5)
insert into Passengers_Travel values('krishana', 'Raipur',34,8907654321,6)
insert into Passengers_Travel values('vamshi','Delhi',28,56789043210,7)
insert into Passengers_Travel values('Virat', 'Jaipur',35,9087654321,8)
insert into Passengers_Travel values('anusha' , 'Lucknow',26,89076543210,4)
insert into Passengers_Travel values('rema', 'Gandhinagar',24,90876543213,9)

select* from Passengers_Travel

insert into TicketBooking_Details values(100,22/08/2022 ,1,2)
insert into TicketBooking_Details values(101,15/10/2022,2,3)
insert into TicketBooking_Details values(102,12/12/2022,3,5)
insert into TicketBooking_Details values(103,21/10/2022,4,6)
insert into TicketBooking_Details values(104,20/12/2022,8,7)
insert into TicketBooking_Details values(105,12/10/2022,7,8)
insert into TicketBooking_Details values(106,13/11/2022,6,4)
insert into TicketBooking_Details values(107,17/08/2022,5,9)

SELECT * FROM TicketBooking_Details

CREATE proc SP_all_Details
as
begin
select* from Flights_Details
select* from Passengers_Travel
SELECT * FROM TicketBooking_Details
end
exec SP_all_Details

create procedure sp_passenger_filghts_Details
as
begin
select 
pt.PassengersName,pt.PassengersAge,pt.PassengersDestination,pt.PassengersPhone as passenger, 
fd.FlghtDestination,fd.FlghtName,fd.FlghtTime 
from Passengers_Travel pt inner join Flights_Details fd
on pt.FlghtId = fd.FlghtId
end

exec sp_passenger_filghts_Details

create procedure sp_TicketBook_filghts_Details
as
begin
select 
td.PassengerId,td.TickDate,fd.FlghtName,fd.FlghtDestination,fd.FlghtTime
from TicketBooking_Details td inner join Flights_Details fd
on td.FlghtId = fd.FlghtId
end

exec sp_TicketBook_filghts_Details