CREATE TABLE TransportationData
(
 id int not null identity(1,1),
 TripID nvarchar(50) NULL,
 RouteID nvarchar(50) NULL,
 StopID nvarchar(50) NULL, 
 StopName nvarchar(50) NULL, 
 WeekBeginning datetime NULL, 
 NumberOdBoardings int NULL,
)
