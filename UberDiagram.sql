Create table dbo.Driver (
	Id Integer Primary Key,
	DriverId Integer NOT NULL,
	FirstName NVarchar(50) NOT NULL,
	LastName NVarchar(50) NOT NULL,
	Gender Varchar(10) NOT NULL,
	History Varchar(200),
	Picture Varbinary(Max),
	DrivingLicenseNumber Varchar(100),
	TotalRides Integer NOT NULL
	Foreign Key (DriverId) References Route(Id)
	);

Create table dbo.Customer (
	Id Integer Primary Key,
	CustomerId Integer NOT NULL,
	UserName NVarchar(50) NOT NULL,
	Gender Varchar(10),
	Country Char(20),
	Phone Integer NOT NULL,
	Password Varchar(50) NOT NULL,
	History Varchar(20)
	Foreign Key (CustomerId) References Route(Id)
	);

Create table dbo.Route (
	Id Integer Primary Key,
	CustomerId Integer NOT NULL,
	DriverId Integer NOT NULL,
	PaymentsId Integer NOT NULL,
	LocationId Integer NOT NULL,
	LocationStartId Integer NOT NULL,
	LocationEndId Integer NOT NULL,
	Distance Integer NOT NULL,
	Canceled Bit NOT NULL,
	DriverRating Integer NOT NULL,
	CustomerRAting Integer NOT NULL,
	--Foreign Key (DriverId) References Driver(DriverId)
	);

Create table dbo.Payments (
	Id Integer Primary Key,
	PaymentTypeId NVarchar(50) NOT NULL,
	AmountId Integer NOT NULL,
	Foreign Key (AmountId) References Route(Id)
	);

Create table dbo.PaymentType (
	Id Integer Primary Key,
	PaymentsId Integer NOT NULL,
	Cash Integer NOT NULL,
	Card Integer NOT NULL,
	PayPal Integer NOT NULL,
	Foreign Key (PaymentsId) References Payments(Id)
	);

Create table dbo.CustomerReview (
	CustomerId Integer Primary Key,
	ReviewId Integer,
	CustomerRating NVarchar(20) NOT NULL,
	CustomerReview Nvarchar(100),
	Foreign Key (CustomerId) References Customer(CustomerId)
	);

Create table dbo.DriverBookmark (
	BookmarkId Integer Primary Key,
	DriverId Integer NOT NULL,
	BookmarkLocation NVarchar(30) NOT NULL,
	Foreign Key (DriverId) References Driver(Id)
	);

Create table dbo.Location (
	Id Integer Primary key,
	LocationId Integer NOT NULL,
	RouteOfCities NVarchar(100) NOT NULL,
	Latitude Integer NOT NULL,
	Longitude Integer NOT NULL,
	PostalCode Integer NOT NULL,
	Foreign Key (LocationId) References Route(Id)
	);

Create table dbo.Station (
	Id Integer Primary key,
	LocationId Integer NOT NULL
	Foreign Key (LocationId) References Location(Id)
	);

Create table dbo.UberStatus (
	Id Integer Primary key,
	Free Bit NOT NULL,
	Busy Bit NOT NULL,
	OffDuty Bit NOT NULL
	);