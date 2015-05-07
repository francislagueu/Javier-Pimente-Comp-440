CREATE TABLE [dbo].[room] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [location_id] INT           NULL,
    [description] VARCHAR (255) NULL,
    [capacity]    INT           NULL,
    CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_rooms_location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[location] ([id])
);

