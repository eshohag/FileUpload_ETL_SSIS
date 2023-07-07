# File Upload ETL_SSIS

SSIS .dtsx package that can loop through a folder and find File_Name*.csv. It should then upload the csv data into an stg.Table_Name. Next it will Truncate dbo.File_Name. Then it will import data from stg.Table_Name to dbo.Table_Name. If the import fails I do not want the dbo table to be Truncated. I only want dbo.Table_Name to be truncated if the stg.Table_Name upload is successful.

https://youtu.be/HezAiDxvlw4
