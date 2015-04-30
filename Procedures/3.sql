/*
3 Procedure that retrieves all the classes and their presenter(s) per track.
*/
CREATE PROCEDURE retrieveClasses
AS
SELECT [dbo].[class].[id]
	  ,[title]
      ,[description]
      ,[duration]
      ,[difficulty_level]
	  ,[first_name]
	  ,[last_name]
  FROM [dbo].[class]

  JOIN [dbo].[presenter]
	ON [dbo].[class].[presenter_id] = [dbo].[presenter].[id]
  JOIN [dbo].[attendent]
	on [dbo].[presenter].[attendent_id] = [dbo].[attendent].[id];
GO
