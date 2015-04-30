CREATE TABLE [dbo].[class_attendent] (
    [class_id]   INT NOT NULL,
    [student_id] INT NOT NULL,
    [id]         INT NOT NULL,
    CONSTRAINT [PK_classe_attendents] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_class_attenden_student] FOREIGN KEY ([student_id]) REFERENCES [dbo].[student] ([id]),
    CONSTRAINT [FK_class_attendent_class] FOREIGN KEY ([class_id]) REFERENCES [dbo].[class] ([id])
);

