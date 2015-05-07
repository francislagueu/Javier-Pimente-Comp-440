CREATE PROCEDURE addTrack
/*
 Procedure that adds a track 
*/
@trackTopic varchar(255) 

AS

INSERT INTO [dbo].[track]
           ([topic])
     VALUES
           (@trackTopic)
