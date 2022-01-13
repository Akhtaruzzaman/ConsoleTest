CREATE TABLE [dbo].[ProductStock] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [ProductId]    UNIQUEIDENTIFIER NOT NULL,
    [SiteId]       UNIQUEIDENTIFIER NOT NULL,
    [MinStock]     DECIMAL (18, 2)  NOT NULL,
    [CurrentStock] DECIMAL (18, 2)  NOT NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [CreatedAt]    DATETIME2 (7)    NOT NULL,
    [CreatedFrom]  NVARCHAR (MAX)   NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedAt]    DATETIME2 (7)    NULL,
    [UpdatedFrom]  NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_ProductStock] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductStock_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ProductStock_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductStock_ProductId]
    ON [dbo].[ProductStock]([ProductId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProductStock_SiteId_ProductId]
    ON [dbo].[ProductStock]([SiteId] ASC, [ProductId] ASC);

