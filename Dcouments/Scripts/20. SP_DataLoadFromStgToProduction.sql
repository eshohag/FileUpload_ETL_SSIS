/*
EXEC [dbo].[DataLoadFromStgToProduction]
EXEC [dbo].[DataLoadFromStgToProduction] @userName='shohag'

*/
ALTER PROCEDURE [dbo].[DataLoadFromStgToProduction]
(  
  @userName VARCHAR(250)=''
)
AS
BEGIN TRY  
	SET NOCOUNT ON;

	--Start Data Migration from Stg to Production Owners_Report Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Owners_Reports]([First name],[Last name],[Email],[Home phone],[Cell phone],[Business phone],[Notification/Hub Access],[Properties],[Owner URL])
				SELECT [First name],[Last name],[Email],[Home phone],[Cell phone],[Business phone],[Notification/Hub Access],[Properties],[Owner URL] FROM [stg].[Owners_Reports]
			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Owners_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --Owners_Report
	
	--Start Data Migration from Stg to Production Tenants_Reports Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Tenants_Reports]([First name],[Last name],[Registered emai],[Primary email],[Home phone],[Cell phone],[Business phone],[Units],[Tenant URL])
				SELECT [First name],[Last name],[Registered emai],[Primary email],[Home phone],[Cell phone],[Business phone],[Units],[Tenant URL] FROM [stg].[Tenants_Reports]
			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Tenants_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --Tenants_Reports
	
	--Start Data Migration from Stg to Production [Melds_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Melds_Reports](
			   [Unit]
			  ,[Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code]
			  ,[Meld creation date]
			  ,[Tenant presence required]
			  ,[Work category]
			  ,[Work location]
			  ,[Priority]
			  ,[Detailed description]
			  ,[Description]
			  ,[Meld status]
			  ,[Meld number]
			  ,[Started]
			  ,[Due date]
			  ,[Meld completion date]
			  ,[Meld completion notes]
			  ,[Meld canceled]
			  ,[Meld cancel reason]
			  ,[Meld reason not completed]
			  ,[Meld rating]
			  ,[Tags]
			  ,[Review Date]
			  ,[Tenant review]
			  ,[Assignee]
			  ,[Maintenance notes]
			  ,[Vendor accept date]
			  ,[Appointment]
			  ,[Meld URL]
			  ,[Propertyware work order]
			  ,[Rent Manager service issue]
			)
			SELECT 
			   [Unit]
			  ,[Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code]
			  ,[Meld creation date]
			  ,[Tenant presence required]
			  ,[Work category]
			  ,[Work location]
			  ,[Priority]
			  ,[Detailed description]
			  ,[Description]
			  ,[Meld status]
			  ,[Meld number]
			  ,[Started]
			  ,[Due date]
			  ,[Meld completion date]
			  ,[Meld completion notes]
			  ,[Meld canceled]
			  ,[Meld cancel reason]
			  ,[Meld reason not completed]
			  ,[Meld rating]
			  ,[Tags]
			  ,[Review Date]
			  ,[Tenant review]
			  ,[Assignee]
			  ,[Maintenance notes]
			  ,[Vendor accept date]
			  ,[Appointment]
			  ,[Meld URL]
			  ,[Propertyware work order]
			  ,[Rent Manager service issue] FROM [stg].[Melds_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Melds_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Melds_Reports]

	--Start Data Migration from Stg to Production [Expenditures_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Expenditures_Reports](
			   [Meld]
			  ,[Amount]
			  ,[Notes]
			  ,[Unit]
			  ,[Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code]
			)
			SELECT 
			   [Meld]
			  ,[Amount]
			  ,[Notes]
			  ,[Unit]
			  ,[Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code] FROM [stg].[Expenditures_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Expenditures_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Expenditures_Reports]

	--Start Data Migration from Stg to Production [Detailed_Expenditures_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Detailed_Expenditures_Reports](
			   [Meld]
			  ,[Quantity]
			  ,[Price]
			  ,[Total]
			  ,[Description]
			  ,[CreationDate]
			  ,[Unit]
			  ,[PropertyName]
			  ,[Addressline1]
			  ,[City]
			  ,[State]
			  ,[Postalcode]
			)
			SELECT 
			   [Meld]
			  ,[Quantity]
			  ,[Price]
			  ,[Total]
			  ,[Description]
			  ,[CreationDate]
			  ,[Unit]
			  ,[PropertyName]
			  ,[Addressline1]
			  ,[City]
			  ,[State]
			  ,[Postalcode] FROM [stg].[Detailed_Expenditures_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Detailed_Expenditures_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Detailed_Expenditures_Reports]

	--Start Data Migration from Stg to Production [Invoices_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Invoices_Reports](
			   [Meld]
			  ,[Vendor]
			  ,[Status]
			  ,[Amount]
			  ,[Notes]
			  ,[Payment date]
			  ,[Submission date]
			  ,[Property Name]
			  ,[Unit Full Address]
			  ,[Invoice URL]
			)
			SELECT 
			   [Meld]
			  ,[Vendor]
			  ,[Status]
			  ,[Amount]
			  ,[Notes]
			  ,[Payment date]
			  ,[Submission date]
			  ,[Property Name]
			  ,[Unit Full Address]
			  ,[Invoice URL] FROM [stg].[Invoices_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Invoices_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Invoices_Reports]

	--Start Data Migration from Stg to Production [Technician_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Technician_Reports](
			   [Technician]
			  ,[Hours Logged]
			  ,[Total Melds Completed]
			  ,[For Rent Sign completed]
			  ,[Evaluation completed]
			  ,[Turnover completed]
			  ,[Appliances completed]
			  ,[Blinds/Window treatments completed]
			  ,[Circuit Breaker completed]
			  ,[Cleaning completed]
			  ,[Doors completed]
			  ,[Driveway completed]
			  ,[Drywall completed]
			  ,[Electrical completed]
			  ,[Exterior completed]
			  ,[Fireplace completed]
			  ,[Flooring completed]
			  ,[Garage Door completed]
			  ,[Garbage Disposal completed]
			  ,[General completed]
			  ,[Hardware completed]
			  ,[Heating/AC completed]
			  ,[Interior completed]
			  ,[Landscaping completed]
			  ,[Locks completed]
			  ,[Other completed]
			  ,[Painting completed]
			  ,[Outside Water Spigot completed]
			  ,[Pest control completed]
			  ,[Plumbing completed]
			  ,[Carpentry completed]
			  ,[Pool completed]
			  ,[Roofing completed]
			  ,[Sewer completed]
			  ,[Shower completed]
			  ,[Siding completed]
			  ,[Smoke Detector/CO detectors completed]
			  ,[Soffit/Fascia completed]
			  ,[Stairs completed]
			  ,[Toilet completed]
			  ,[Towel bars completed]
			  ,[Violations completed]
			  ,[Washer/Dryer completed]
			  ,[Water Damage completed]
			  ,[Water Heater completed]
			  ,[Water Softener completed]
			  ,[Windows completed]
			  ,[For Rent Sign logged]
			  ,[Evaluation logged]
			  ,[Turnover logged]
			  ,[Appliances logged]
			  ,[Blinds/Window treatments logged]
			  ,[Circuit Breaker logged]
			  ,[Cleaning logged]
			  ,[Doors logged]
			  ,[Driveway logged]
			  ,[Drywall logged]
			  ,[Electrical logged]
			  ,[Exterior logged]
			  ,[Fireplace logged]
			  ,[Flooring logged]
			  ,[Garage Door logged]
			  ,[Garbage Disposal logged]
			  ,[General logged]
			  ,[Hardware logged]
			  ,[Heating/AC logged]
			  ,[Interior logged]
			  ,[Landscaping logged]
			  ,[Locks logged]
			  ,[Other logged]
			  ,[Painting logged]
			  ,[Outside Water Spigot logged]
			  ,[Pest control logged]
			  ,[Plumbing logged]
			  ,[Carpentry logged]
			  ,[Pool logged]
			  ,[Roofing logged]
			  ,[Sewer logged]
			  ,[Shower logged]
			  ,[Siding logged]
			  ,[Smoke Detector/CO detectors logged]
			  ,[Soffit/Fascia logged]
			  ,[Stairs logged]
			  ,[Toilet logged]
			  ,[Towel bars logged]
			  ,[Violations logged]
			  ,[Washer/Dryer logged]
			  ,[Water Damage logged]
			  ,[Water Heater logged]
			  ,[Water Softener logged]
			  ,[Windows logged]
			)
			SELECT 
			   [Technician]
			  ,[Hours Logged]
			  ,[Total Melds Completed]
			  ,[For Rent Sign completed]
			  ,[Evaluation completed]
			  ,[Turnover completed]
			  ,[Appliances completed]
			  ,[Blinds/Window treatments completed]
			  ,[Circuit Breaker completed]
			  ,[Cleaning completed]
			  ,[Doors completed]
			  ,[Driveway completed]
			  ,[Drywall completed]
			  ,[Electrical completed]
			  ,[Exterior completed]
			  ,[Fireplace completed]
			  ,[Flooring completed]
			  ,[Garage Door completed]
			  ,[Garbage Disposal completed]
			  ,[General completed]
			  ,[Hardware completed]
			  ,[Heating/AC completed]
			  ,[Interior completed]
			  ,[Landscaping completed]
			  ,[Locks completed]
			  ,[Other completed]
			  ,[Painting completed]
			  ,[Outside Water Spigot completed]
			  ,[Pest control completed]
			  ,[Plumbing completed]
			  ,[Carpentry completed]
			  ,[Pool completed]
			  ,[Roofing completed]
			  ,[Sewer completed]
			  ,[Shower completed]
			  ,[Siding completed]
			  ,[Smoke Detector/CO detectors completed]
			  ,[Soffit/Fascia completed]
			  ,[Stairs completed]
			  ,[Toilet completed]
			  ,[Towel bars completed]
			  ,[Violations completed]
			  ,[Washer/Dryer completed]
			  ,[Water Damage completed]
			  ,[Water Heater completed]
			  ,[Water Softener completed]
			  ,[Windows completed]
			  ,[For Rent Sign logged]
			  ,[Evaluation logged]
			  ,[Turnover logged]
			  ,[Appliances logged]
			  ,[Blinds/Window treatments logged]
			  ,[Circuit Breaker logged]
			  ,[Cleaning logged]
			  ,[Doors logged]
			  ,[Driveway logged]
			  ,[Drywall logged]
			  ,[Electrical logged]
			  ,[Exterior logged]
			  ,[Fireplace logged]
			  ,[Flooring logged]
			  ,[Garage Door logged]
			  ,[Garbage Disposal logged]
			  ,[General logged]
			  ,[Hardware logged]
			  ,[Heating/AC logged]
			  ,[Interior logged]
			  ,[Landscaping logged]
			  ,[Locks logged]
			  ,[Other logged]
			  ,[Painting logged]
			  ,[Outside Water Spigot logged]
			  ,[Pest control logged]
			  ,[Plumbing logged]
			  ,[Carpentry logged]
			  ,[Pool logged]
			  ,[Roofing logged]
			  ,[Sewer logged]
			  ,[Shower logged]
			  ,[Siding logged]
			  ,[Smoke Detector/CO detectors logged]
			  ,[Soffit/Fascia logged]
			  ,[Stairs logged]
			  ,[Toilet logged]
			  ,[Towel bars logged]
			  ,[Violations logged]
			  ,[Washer/Dryer logged]
			  ,[Water Damage logged]
			  ,[Water Heater logged]
			  ,[Water Softener logged]
			  ,[Windows logged] FROM [stg].[Technician_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Technician_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Technician_Reports]

	--Start Data Migration from Stg to Production [Units_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Units_Reports](
			   [Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code]
			  ,[Unit]
			  ,[Suite]
			  ,[Department]
			  ,[Room]
			  ,[Apartment]
			  ,[Owners]
			  ,[Property groups]
			  ,[Unit URL]
			)
			SELECT 
			   [Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code]
			  ,[Unit]
			  ,[Suite]
			  ,[Department]
			  ,[Room]
			  ,[Apartment]
			  ,[Owners]
			  ,[Property groups]
			  ,[Unit URL] FROM [stg].[Units_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Units_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Units_Reports]

	--Start Data Migration from Stg to Production [Work_Logs_Reports] Tables
	BEGIN TRY  	
		BEGIN TRANSACTION
			INSERT INTO [dbo].[Work_Logs_Reports](
			   [Meld]
			  ,[Work Category]
			  ,[Agent]
			  ,[Title]
			  ,[Description]
			  ,[Hours]
			  ,[Check in]
			  ,[Checkout]
			  ,[Unit]
			  ,[Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code]
			)
			SELECT 
			   [Meld]
			  ,[Work Category]
			  ,[Agent]
			  ,[Title]
			  ,[Description]
			  ,[Hours]
			  ,[Check in]
			  ,[Checkout]
			  ,[Unit]
			  ,[Property Name]
			  ,[Address line 1]
			  ,[City]
			  ,[State]
			  ,[Postal code] FROM [stg].[Work_Logs_Reports];

			IF @@ROWCOUNT>0
			BEGIN
				TRUNCATE TABLE [stg].[Work_Logs_Reports]
			END
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		  IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH  --[Work_Logs_Reports]

END TRY  
BEGIN CATCH  
   	  /* If error occured the will show this message */
		SELECT 'ErrorNumber :' + CAST(ERROR_NUMBER() AS varchar(max)) 
		+ ', ErrorState : '  + CAST( ERROR_STATE() AS varchar(max))
		+ ', ErrorProcedure : '  + CAST( ERROR_PROCEDURE() AS varchar(max))
		+ ', ErrorLine : '  + CAST( ERROR_LINE() AS varchar(max))
		+ ', ErrorMessage : '  + CAST( ERROR_MESSAGE() AS varchar(max));
END CATCH
GO
