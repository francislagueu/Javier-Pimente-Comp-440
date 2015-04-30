CREATE PROCEDURE insertClass
@FirstName varchar(255) = NULL , @LastName varchar(255) = NULL , @Email varchar(255) = NULL,

@Title varchar(255) = NULL, @Description varchar(255) = NULL, @Duration int = 60 , 
@DifficultyLevel varchar(255) = NULL

AS

DECLARE @AttendentId int; 
/* 
Checks if the attendent exist and if it does we get the id to insert 
*/
SELECT @AttendentId = id 
 FROM [dbo].[attendent] 
 WHERE first_name = @FirstName AND last_name = @LastName;

IF (@AttendentId IS NOT NULL) AND (LEN(@AttendentId) > 0)
	/* 
	The attendent already exists but need to check the presetner table 
	*/
	BEGIN
	PRINT 'Attendent Exists Already';
	DECLARE @PresenterId int ;
	SELECT @PresenterId = id 
	 FROM [dbo].[presenter] 
	 WHERE attendent_id = @AttendentId;
	
	IF (@PresenterId IS NOT NULL) AND (LEN(@PresenterId) > 0)
	/*
	We need to make a new presenter
	*/
		BEGIN
		PRINT 'Presenter Exists Already';
		INSERT [dbo].[classe]
				   ([presenter_id]
				   ,[title]
				   ,[description]
				   ,[duration]
				   ,[difficulty_level])
			 VALUES
				   (@PresenterId,
				   @Title,
				   @Description,
				   @Duration,
				   @DifficultyLevel);
		END
	ELSE
	/*
	A presenter exist
	*/
		BEGIN
		PRINT 'New Presenter but not attendent';
		INSERT INTO [dbo].[presenter]
			   ([attendent_id])
		 VALUES
			   (@AttendentId);

		INSERT [dbo].[classe]
				   ([presenter_id]
				   ,[title]
				   ,[description]
				   ,[duration]
				   ,[difficulty_level])
			 VALUES
				   (SCOPE_IDENTITY(),
				   @Title,
				   @Description,
				   @Duration,
				   @DifficultyLevel);
		END
	END
ELSE
	/* 
	The Attendent Does Not Exits 
	*/
	BEGIN
		PRINT 'Creating New Attendent';
		INSERT INTO [dbo].[attendent]
					   ([location_id]
					   ,[address_id]
					   ,[first_name]
					   ,[last_name]
					   ,[email])
				 VALUES
					   (null,
					   null,
					   @FirstName,
					   @LastName,
					   @Email);

			INSERT INTO [dbo].[presenter]
					   ([attendent_id])
				 VALUES
					   (SCOPE_IDENTITY());

		INSERT [dbo].[classe]
					   ([presenter_id]
					   ,[title]
					   ,[description]
					   ,[duration]
					   ,[difficulty_level])
				 VALUES
					   (SCOPE_IDENTITY(),
					   @Title,
					   @Description,
					   @Duration,
					   @DifficultyLevel);
	END
