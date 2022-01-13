CREATE TABLE [dbo].[ConfirmOrderHD] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [ConfirmOrderHId] UNIQUEIDENTIFIER NOT NULL,
    [SONO]            NVARCHAR (MAX)   NULL,
    [ProductId]       UNIQUEIDENTIFIER NOT NULL,
    [WebOrder]        NVARCHAR (MAX)   NULL,
    [Qty]             INT              NOT NULL,
    [TotalPrice]      DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    [UnitPrice]       DECIMAL (18, 6)  NOT NULL,
    [CurrencyId]      UNIQUEIDENTIFIER DEFAULT ('fadede5d-1c91-4d95-92e4-f447ea6edade') NOT NULL,
    CONSTRAINT [PK_ConfirmOrderHD] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConfirmOrderHD_ConfirmOrderH_ConfirmOrderHId] FOREIGN KEY ([ConfirmOrderHId]) REFERENCES [dbo].[ConfirmOrderH] ([Id]),
    CONSTRAINT [FK_ConfirmOrderHD_Currency_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ConfirmOrderHD_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderHD_ConfirmOrderHId]
    ON [dbo].[ConfirmOrderHD]([ConfirmOrderHId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderHD_ProductId]
    ON [dbo].[ConfirmOrderHD]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderHD_CurrencyId]
    ON [dbo].[ConfirmOrderHD]([CurrencyId] ASC);

