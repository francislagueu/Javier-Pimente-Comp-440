CREATE TABLE [dbo].[presenter] (
    [id]           INT IDENTITY (1, 1) NOT NULL,
    [attendent_id] INT NOT NULL,
    CONSTRAINT [PK_presenter] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_presenter_attendents] FOREIGN KEY ([attendent_id]) REFERENCES [dbo].[attendent] ([id])
);

