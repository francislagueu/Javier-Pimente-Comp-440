CREATE PROCEDURE getRoomPerTrack
/*
5. Procedure that retrieves all the rooms per track - with respective presentations.
*/
@trackTitle varchar(255)

AS
DECLARE @trackId int;
SELECT @trackId = id 
 FROM [dbo].[track] 
 WHERE topic=@trackTitle;

SELECT DISTINCT [room_id],
		[dbo].[room].[description],
		[title]
	FROM [dbo].[classe]
	JOIN [dbo].[room]
		ON [dbo].[classe].[room_id]=[dbo].[room].[id]
	WHERE track_id=@trackId;

