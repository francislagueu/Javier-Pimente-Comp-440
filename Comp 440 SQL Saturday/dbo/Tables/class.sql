CREATE TABLE [dbo].[class] (
    [id]               INT           IDENTITY (1, 1) NOT NULL,
    [track_id]         INT           NULL,
    [presenter_id]     INT           NOT NULL,
    [location_id]      INT           NULL,
    [title]            VARCHAR (255) NOT NULL,
    [description]      VARCHAR (255) NULL,
    [duration]         INT           NULL,
    [difficulty_level] VARCHAR (255) NULL,
    CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_class_location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[location] ([id]),
    CONSTRAINT [FK_class_presenter] FOREIGN KEY ([presenter_id]) REFERENCES [dbo].[presenter] ([id]),
    CONSTRAINT [FK_class_track] FOREIGN KEY ([track_id]) REFERENCES [dbo].[track] ([id])
);

