CREATE TABLE [dbo].[vender_table] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [vender_id]   INT           NOT NULL,
    [location_id] INT           NOT NULL,
    [placement]   VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_vender_table] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vender_table_location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[location] ([id]),
    CONSTRAINT [FK_vender_table_vender] FOREIGN KEY ([vender_id]) REFERENCES [dbo].[vender] ([id])
);

