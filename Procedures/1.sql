CREATE PROCEDURE addTrack
/*
 1. Procedure that adds a track 
*/
@trackTopic varchar(255) 

AS

INSERT INTO [dbo].[track]
           ([topic])
     VALUES
           (@trackTopic)
GO