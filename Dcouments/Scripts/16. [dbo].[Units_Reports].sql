CREATE TABLE [dbo].[Units_Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Property Name] VARCHAR(MAX),
	[Address line 1] VARCHAR(MAX),
	[City] VARCHAR(MAX),
	[State] VARCHAR(MAX),
	[Postal code] VARCHAR(MAX),
	[Unit] VARCHAR(MAX),
	[Suite] VARCHAR(MAX),
	[Department] VARCHAR(MAX),
	[Room] VARCHAR(MAX),
	[Apartment] VARCHAR(MAX),
	[Owners] VARCHAR(MAX),
	[Property groups] VARCHAR(MAX),
	[Unit URL] VARCHAR(MAX)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
