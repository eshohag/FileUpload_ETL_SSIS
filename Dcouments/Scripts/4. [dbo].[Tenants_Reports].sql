CREATE TABLE [dbo].[Tenants_Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First name] [varchar](max) NULL,
	[Last name][varchar](max) NULL,
	[Registered emai][varchar](max) NULL,
	[Primary email][varchar](max) NULL,
	[Home phone][varchar](max) NULL,
	[Cell phone][varchar](max) NULL,
	[Business phone][varchar](max) NULL,
	[Units][varchar](max) NULL,
	[Tenant URL][varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
