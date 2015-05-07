CREATE TABLE [dbo].[track] (
    [id]    INT           IDENTITY (1, 1) NOT NULL,
    [topic] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_tracks] PRIMARY KEY CLUSTERED ([id] ASC)
);

