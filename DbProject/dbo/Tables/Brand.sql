CREATE TABLE [dbo].[Brand] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Code]        NVARCHAR (30)    NOT NULL,
    [Name]        NVARCHAR (100)   NOT NULL,
    [Remark]      NVARCHAR (300)   NULL,
    [ProgramId]   UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    [UpdatedBy]   NVARCHAR (MAX)   NULL,
    [UpdatedAt]   DATETIME2 (7)    NULL,
    [UpdatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Brand_ProgramMaster_ProgramId] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[ProgramMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Brand_ProgramId]
    ON [dbo].[Brand]([ProgramId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Brand_Code_ProgramId]
    ON [dbo].[Brand]([Code] ASC, [ProgramId] ASC);

