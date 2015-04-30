CREATE PROCEDURE addClassTopic
/*
2. Procedure that associates a class with the track. Takes a class title, location, and track topic
(Location id and class title can act as a PK)
*/
@classTitle varchar(255) = NULL ,@classLocation int = NULL, @trackTopic varchar(255) = NULL 

AS

DECLARE @trackId int; 
/*
Gets the topic id from @trackTopic
*/
SELECT @trackId = id 
 FROM [dbo].[track] 
 WHERE topic=@trackTopic;
 /*
 If no location id was given was are using null
 */
IF (@classLocation IS NOT NULL)
	BEGIN
		UPDATE [dbo].[class]
			SET track_id=@trackId
			WHERE location_id = @classLocation AND title = @classTitle;
	END
ELSE
	BEGIN
	UPDATE [dbo].[class]
			SET track_id=@trackId
			WHERE location_id IS NULL AND title = @classTitle;
	END


GO