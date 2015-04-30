CREATE TABLE [dbo].[location] (
    [id]         INT      IDENTITY (1, 1) NOT NULL,
    [address_id] INT      NULL,
    [date]       DATETIME NULL,
    CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_location_address] FOREIGN KEY ([address_id]) REFERENCES [dbo].[address] ([id])
);

