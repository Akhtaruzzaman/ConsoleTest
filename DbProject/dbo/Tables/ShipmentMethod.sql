CREATE TABLE [dbo].[ShipmentMethod] (
    [Id]    UNIQUEIDENTIFIER NOT NULL,
    [RefId] BIGINT           NOT NULL,
    [Code]  NVARCHAR (255)   NOT NULL,
    [Name]  NVARCHAR (255)   NOT NULL,
    CONSTRAINT [PK_ShipmentMethod] PRIMARY KEY CLUSTERED ([Id] ASC)
);

