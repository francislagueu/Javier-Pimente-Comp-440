CREATE TABLE [dbo].[presentation] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [vender_id]   INT           NOT NULL,
    [room_id]     INT           NULL,
    [location_id] INT           NULL,
    [title]       VARCHAR (255) NOT NULL,
    [desription]  VARCHAR (255) NULL,
    [duration]    INT           NOT NULL,
    CONSTRAINT [FK_presentation_location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[location] ([id]),
    CONSTRAINT [FK_presentation_presenter] FOREIGN KEY ([vender_id]) REFERENCES [dbo].[vender] ([id]),
    CONSTRAINT [FK_presentation_room] FOREIGN KEY ([room_id]) REFERENCES [dbo].[room] ([id])
);

