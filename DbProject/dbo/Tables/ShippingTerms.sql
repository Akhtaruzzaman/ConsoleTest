CREATE TABLE [dbo].[ShippingTerms] (
    [Id]    UNIQUEIDENTIFIER NOT NULL,
    [RefId] BIGINT           NOT NULL,
    [Code]  NVARCHAR (255)   NOT NULL,
    [Name]  NVARCHAR (255)   NOT NULL,
    CONSTRAINT [PK_ShippingTerms] PRIMARY KEY CLUSTERED ([Id] ASC)
);

