CREATE TABLE [dbo].[schedule] (
    [id]          INT      IDENTITY (1, 1) NOT NULL,
    [class_id]    INT      NOT NULL,
    [room_id]     INT      NULL,
    [location_id] INT      NULL,
    [start_time]  DATETIME NOT NULL,
    [end_time]    DATETIME NOT NULL,
    CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_schedule_class] FOREIGN KEY ([class_id]) REFERENCES [dbo].[class] ([id]),
    CONSTRAINT [FK_schedule_location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[location] ([id]),
    CONSTRAINT [FK_schedule_room] FOREIGN KEY ([room_id]) REFERENCES [dbo].[room] ([id])
);

