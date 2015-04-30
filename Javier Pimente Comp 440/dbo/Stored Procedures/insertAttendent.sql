CREATE PROCEDURE insertAttendent 
@Street varchar(255) = NULL , @City varchar(255) = NULL ,
@ZipCode varchar(255) = NULL , @State varchar(255) = NULL , 
@FirstName varchar(255) = NULL , @LastName varchar(255) = NULL , 
@Email varchar(255) = NULL

AS

BEGIN TRAN

INSERT [dbo].[address]
           ([street]
           ,[city]
           ,[zip_code]
           ,[state])
     VALUES
           (@Street,
           @City,
		   @ZipCode,
           @State)

INSERT INTO [dbo].[attendent]
           ([location_id]
           ,[address_id]
           ,[first_name]
           ,[last_name]
           ,[email])
     VALUES
           (null,
           SCOPE_IDENTITY(),
           @FirstName,
           @LastName,
           @Email)
COMMIT TRAN

