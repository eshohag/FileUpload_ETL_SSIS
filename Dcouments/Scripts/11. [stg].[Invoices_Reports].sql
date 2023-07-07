CREATE TABLE [stg].[Invoices_Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Meld] VARCHAR(MAX) NULL,
	[Vendor] VARCHAR(MAX) NULL,
	[Status] VARCHAR(MAX) NULL,
	[Amount] VARCHAR(MAX) NULL,
	[Notes] VARCHAR(MAX) NULL,
	[Payment date] VARCHAR(MAX) NULL,
	[Submission date] VARCHAR(MAX) NULL,
	[Property Name] VARCHAR(MAX) NULL,
	[Unit Full Address] VARCHAR(MAX) NULL,
	[Invoice URL] VARCHAR(MAX) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
