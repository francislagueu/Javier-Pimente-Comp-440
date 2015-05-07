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

SELECT  [room_id],
		[dbo].[class].[title]
		FROM [dbo].[schedule]
		JOIN [dbo].[class]
			ON [dbo].[schedule].[class_id]=[dbo].[class].[id]
		WHERE track_id=@trackId;
