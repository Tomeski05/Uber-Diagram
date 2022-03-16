Create table Driver (
	Id Integer Primary Key,
	FirstName NVarchar(50) NOT NULL,
	LastName NVarchar(50) NOT NULL,
	Gender Varchar(10) NOT NULL,
	History Varchar(200),
	Picture Varbinary(Max)
	--Foreign Key (Id) References Route(Id)
	);

Create table Rider (
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
	Foreign Key (Id) References Driver(Id)
	);

Create table Payments (
	Id Integer Primary Key,
	Cash Integer NOT NULL,
	Card Integer NOT NULL,
	PayPal Integer NOT NULL,
	Amount Integer NOT NULL
	);

Create table RiderReview (
	ReviewId Integer Primary Key,
	UserName NVarchar(20) NOT NULL,
	UserRating NVarchar(20) NOT NULL,
	UserReview Nvarchar(100)
	);