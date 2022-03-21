Create table dbo.Driver (
	Id Integer Primary Key,
	FirstName NVarchar(50) NOT NULL,
	LastName NVarchar(50) NOT NULL,
	Gender Varchar(10) NOT NULL,
	History Varchar(200),
	Picture Varbinary(Max),
	DrivingLicenseNumber Varchar(100),
	TotalRides Integer NOT NULL
	);

Create table dbo.Customer (
	Id Integer Primary Key,
	UserName NVarchar(50) NOT NULL,
	Gender Varchar(10),
	Country Char(20),
	Phone Integer NOT NULL,
	Password Varchar(50) NOT NULL,
	History Varchar(20)
	);

Create table dbo.Route (
	Id Integer Primary Key,
	CustomerId Integer NOT NULL,
	DriverId Integer NOT NULL,
	LocationStartId Integer NOT NULL,
	LocationEndId Integer NOT NULL,
	Distance Integer NOT NULL,
	Foreign Key (DriverId) References Driver(Id),
	Foreign KEy (CustomerId) References Customer(Id),
	Canceled Bit NOT NULL 
	);

Create table dbo.Payments (
	Id Integer Primary Key,
	CustomerId Integer NOT NULL,
	DriverId Integer NOT NULL,
	PaymentType NVarchar(50) NOT NULL,
	Amount Integer NOT NULL,
	Foreign Key (CustomerId) References Customer(Id),
	Foreign Key (DriverId) References Driver(Id)
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
	Id Integer Primary Key,
	ReviewId Integer,
	UserRating NVarchar(20) NOT NULL,
	UserReview Nvarchar(100),
	Foreign Key (ReviewId) References Customer(Id)
	);

Create table dbo.DriverReview (
	ReviewId Integer Primary Key,
	DriverId Integer NOT NULL,
	DriverName NVarchar(50) NOT NULL,
	DriverRating Integer NOT NULL,
	DriverReview NVarchar(50) NOT NULL,
	Foreign Key (DriverId) References Driver(Id)
	);

Create table dbo.Location (
	Id Integer Primary key,
	CityLocation NVarchar(50) NOT NULL,
	PostalCode Varchar(20) NOT NULL,

	);

Create table dbo.Station (
	Id Integer Primary key,
	LocationId Integer NOT NULL
	);