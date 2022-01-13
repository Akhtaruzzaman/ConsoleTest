CREATE TABLE [dbo].[ProductMatrixData] (
    [Id]        UNIQUEIDENTIFIER NOT NULL,
    [ProductId] UNIQUEIDENTIFIER NOT NULL,
    [Name]      NVARCHAR (MAX)   NULL,
    [SortOrder] INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ProductMatrixData] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductMatrixData_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductMatrixData_ProductId]
    ON [dbo].[ProductMatrixData]([ProductId] ASC);

