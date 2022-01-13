CREATE TABLE [dbo].[General_OHD] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [General_OHId] UNIQUEIDENTIFIER NOT NULL,
    [ProductId]    UNIQUEIDENTIFIER NOT NULL,
    [CurrencyId]   UNIQUEIDENTIFIER NOT NULL,
    [Qty]          INT              NOT NULL,
    CONSTRAINT [PK_General_OHD] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_General_OHD_Currency_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([Id]),
    CONSTRAINT [FK_General_OHD_General_OH_General_OHId] FOREIGN KEY ([General_OHId]) REFERENCES [dbo].[General_OH] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_General_OHD_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_General_OHD_CurrencyId]
    ON [dbo].[General_OHD]([CurrencyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_General_OHD_General_OHId]
    ON [dbo].[General_OHD]([General_OHId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_General_OHD_ProductId]
    ON [dbo].[General_OHD]([ProductId] ASC);

