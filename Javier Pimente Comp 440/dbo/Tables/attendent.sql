CREATE TABLE [dbo].[attendent] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [location_id] INT           NULL,
    [address_id]  INT           NULL,
    [first_name]  VARCHAR (255) NULL,
    [last_name]   VARCHAR (255) NOT NULL,
    [email]       VARCHAR (255) NULL,
    CONSTRAINT [PK_attendents] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_attendent_address] FOREIGN KEY ([address_id]) REFERENCES [dbo].[address] ([id]),
    CONSTRAINT [FK_attendents_location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[location] ([id])
);

