
CREATE TABLE [dbo].[Owners_Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First name] [varchar](max) NULL,
	[Last name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Home phone] [varchar](max) NULL,
	[Cell phone] [varchar](max) NULL,
	[Business phone] [varchar](max) NULL,
	[Notification/Hub Access] [varchar](max) NULL,
	[Properties] [varchar](max) NULL,
	[Owner URL] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


