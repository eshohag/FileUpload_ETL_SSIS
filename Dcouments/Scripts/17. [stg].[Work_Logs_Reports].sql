CREATE TABLE [stg].[Work_Logs_Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Meld] VARCHAR(MAX) NULL,
	[Work Category] VARCHAR(MAX) NULL,
	[Agent] VARCHAR(MAX) NULL,
	[Title] VARCHAR(MAX) NULL,
	[Description] VARCHAR(MAX) NULL,
	[Hours] VARCHAR(MAX) NULL,
	[Check in] VARCHAR(MAX) NULL,
	[Checkout] VARCHAR(MAX) NULL,
	[Unit] VARCHAR(MAX) NULL,
	[Property Name] VARCHAR(MAX) NULL,
	[Address line 1] VARCHAR(MAX) NULL,
	[City] VARCHAR(MAX) NULL,
	[State] VARCHAR(MAX) NULL,
	[Postal code] VARCHAR(MAX) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO