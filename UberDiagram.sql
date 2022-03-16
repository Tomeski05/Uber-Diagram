Create table Driver (
	Id Integer Primary Key,
	FirstName NVarchar(50) NOT NULL,
	LastName NVarchar(50) NOT NULL,
	Gender Varchar(10) NOT NULL,
	History Varchar(200),
	Picture Varbinary(Max),
	DrivingLicenseNumber Varchar(100),
	TotalRides Integer NOT NULL
	);

Create table Customer (
	Id Integer Primary Key,
	UserName NVarchar(50) NOT NULL,
	Gender Varchar(10),
	Country Char(20),
	Phone Integer NOT NULL,
	Password Varchar(50) NOT NULL,
	History Varchar(20)
	);

Create table Route (
	Id Integer Primary Key,
	TripStartTime Integer NOT NULL,
	TripEndTime Integer NOT NULL,
	Distance Integer NOT NULL,
	Foreign Key (Id) References Driver(Id),
	--Canceled Boolean NOT NULL
	);

Create table Payments (
	Id Integer Primary Key,
	Cash Integer NOT NULL,
	Card Integer NOT NULL,
	PayPal Integer NOT NULL,
	Amount Integer NOT NULL
	);

Create table CustomerReview (
	ReviewId Integer Primary Key,
	UserName NVarchar(20) NOT NULL,
	UserRating NVarchar(20) NOT NULL,
	UserReview Nvarchar(100)
	);

Create table DriverReview (
	ReviewId Integer Primary Key,
	DriverName NVarchar(50) NOT NULL,
	DriverRating Integer NOT NULL,
	DriverReview NVarchar(50) NOT NULL,
	Foreign Key (ReviewId) References Driver(Id)
	);