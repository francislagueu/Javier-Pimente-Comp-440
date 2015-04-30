/*
Procedure that retrieves all the classes and their presenter(s) per track.
*/
CREATE PROCEDURE retrieveClasses
AS
SELECT [dbo].[classe].[id]
	  ,[title]
      ,[description]
      ,[duration]
      ,[difficulty_level]
	  ,[first_name]
	  ,[last_name]
  FROM [dbo].[classe]

  JOIN [dbo].[presenter]
	ON [dbo].[classe].[presenter_id] = [dbo].[presenter].[id]
  JOIN [dbo].[attendent]
	on [dbo].[presenter].[attendent_id] = [dbo].[attendent].[id];


