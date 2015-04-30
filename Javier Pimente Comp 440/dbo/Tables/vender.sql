CREATE TABLE [dbo].[vender] (
    [id]           INT IDENTITY (1, 1) NOT NULL,
    [attendent_id] INT NULL,
    CONSTRAINT [PK_vender] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vender_attendents] FOREIGN KEY ([attendent_id]) REFERENCES [dbo].[attendent] ([id])
);

