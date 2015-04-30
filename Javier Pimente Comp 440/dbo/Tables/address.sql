CREATE TABLE [dbo].[address] (
    [id]       INT           IDENTITY (1, 1) NOT NULL,
    [street]   VARCHAR (255) NULL,
    [city]     VARCHAR (255) NULL,
    [zip_code] VARCHAR (255) NULL,
    [state]    VARCHAR (255) NULL,
    CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED ([id] ASC)
);

