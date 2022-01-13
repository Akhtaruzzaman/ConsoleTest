CREATE TABLE [dbo].[Currency] (
    [Id]     UNIQUEIDENTIFIER NOT NULL,
    [Code]   NVARCHAR (5)     NOT NULL,
    [Name]   NVARCHAR (50)    NOT NULL,
    [Symbol] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED ([Id] ASC)
);

