CREATE TABLE [dbo].[Product] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [Code]              NVARCHAR (100)   NOT NULL,
    [Name]              NVARCHAR (100)   NOT NULL,
    [Remark]            NVARCHAR (300)   NULL,
    [ProgramId]         UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]         NVARCHAR (MAX)   NULL,
    [CreatedAt]         DATETIME2 (7)    NOT NULL,
    [CreatedFrom]       NVARCHAR (MAX)   NULL,
    [UpdatedBy]         NVARCHAR (MAX)   NULL,
    [UpdatedAt]         DATETIME2 (7)    NULL,
    [UpdatedFrom]       NVARCHAR (MAX)   NULL,
    [Key]               NVARCHAR (100)   NULL,
    [ImageLink]         NVARCHAR (MAX)   NULL,
    [IsActive]          BIT              DEFAULT ((0)) NOT NULL,
    [IsWithoutData]     BIT              DEFAULT ((0)) NOT NULL,
    [Measurement]       NVARCHAR (MAX)   NULL,
    [BrandId]           UNIQUEIDENTIFIER DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
    [ImageLink2]        NVARCHAR (MAX)   NULL,
    [ImageLink3]        NVARCHAR (MAX)   NULL,
    [UnitOfMeasurement] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Product_ProgramMaster_ProgramId] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[ProgramMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Product_ProgramId]
    ON [dbo].[Product]([ProgramId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Product_Code_ProgramId]
    ON [dbo].[Product]([Code] ASC, [ProgramId] ASC);

