CREATE PROCEDURE addClassToSchedule
/*
4. Procedure that adds a schedule entry. 
*/
@classId int , @locationId int, @startTime datetime, @endTime datetime 

AS
INSERT INTO [dbo].[schedule]
           ([class_id]
           ,[location_id]
           ,[start_time]
           ,[end_time])
     VALUES
           (@classId
           ,@locationId
           ,@startTime
           ,@endTime);
GO


