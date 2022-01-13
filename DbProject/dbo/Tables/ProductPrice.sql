CREATE TABLE [dbo].[ProductPrice] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [ProductId]      UNIQUEIDENTIFIER NOT NULL,
    [SiteId]         UNIQUEIDENTIFIER NOT NULL,
    [Price]          DECIMAL (18, 6)  NOT NULL,
    [CreatedAt]      DATETIME2 (7)    DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
    [CreatedBy]      NVARCHAR (MAX)   NULL,
    [CreatedFrom]    NVARCHAR (MAX)   NULL,
    [UpdatedAt]      DATETIME2 (7)    NULL,
    [UpdatedBy]      NVARCHAR (MAX)   NULL,
    [UpdatedFrom]    NVARCHAR (MAX)   NULL,
    [CurrencyId]     UNIQUEIDENTIFIER DEFAULT ('fadede5d-1c91-4d95-92e4-f447ea6edade') NOT NULL,
    [VendorMasterId] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_ProductPrice] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductPrice_Currency_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ProductPrice_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ProductPrice_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ProductPrice_VendorMaster_VendorMasterId] FOREIGN KEY ([VendorMasterId]) REFERENCES [dbo].[VendorMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductPrice_ProductId]
    ON [dbo].[ProductPrice]([ProductId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProductPrice_SiteId_CurrencyId_ProductId_VendorMasterId]
    ON [dbo].[ProductPrice]([SiteId] ASC, [CurrencyId] ASC, [ProductId] ASC, [VendorMasterId] ASC) WHERE ([VendorMasterId] IS NOT NULL);


GO
CREATE NONCLUSTERED INDEX [IX_ProductPrice_CurrencyId]
    ON [dbo].[ProductPrice]([CurrencyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ProductPrice_VendorMasterId]
    ON [dbo].[ProductPrice]([VendorMasterId] ASC);

