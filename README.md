# File Upload ETL_SSIS

SSIS .dtsx package that can loop through a folder and find File_Name*.csv. It should then upload the csv data into an stg.Table_Name. Next it will Truncate dbo.File_Name. Then it will import data from stg.Table_Name to dbo.Table_Name. If the import fails I do not want the dbo table to be Truncated. I only want dbo.Table_Name to be truncated if the stg.Table_Name upload is successful.

https://youtu.be/HezAiDxvlw4


# Installation Guidelines

Folder Structure pieces of information,
``
Do not change the folder structure because I have created this structure inside the package.
``

## Step-1 Create Folders 
  C:\FileUpload_ETL_SSIS
  
  C:\FileUpload_ETL_SSIS\Processing
  
  C:\FileUpload_ETL_SSIS\Processing\ArchiveFiles
  
  C:\FileUpload_ETL_SSIS\Processing\EmptyFiles_For_Processing

## Step-2 Keep Empty File Templates at "C:\FileUpload_ETL_SSIS\Processing\EmptyFiles_For_Processing"
	Unzip- "Required_EmptyFiles_Templates.zip" folder file templates there are total of 9 files

## Step-3 Finally keep the latest migration-able files in "C:\FileUpload_ETL_SSIS\Processing" these folders

## Step-4 Run all Scripts for SQL Server staging/dbo Tables and Stored Procedures

## Step-5 Run your SSIS Package through SQL Server or any other tools


## N.B: Do not change the folder structure because I have created this structure inside the package.
