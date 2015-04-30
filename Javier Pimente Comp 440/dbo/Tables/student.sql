CREATE TABLE [dbo].[student] (
    [id]           INT IDENTITY (1, 1) NOT NULL,
    [attendent_id] INT NULL,
    CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_students_attendents] FOREIGN KEY ([attendent_id]) REFERENCES [dbo].[attendent] ([id])
);

