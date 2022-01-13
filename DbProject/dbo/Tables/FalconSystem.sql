CREATE TABLE [dbo].[FalconSystem] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Code]        NVARCHAR (30)    NOT NULL,
    [Name]        NVARCHAR (100)   NOT NULL,
    [Remark]      NVARCHAR (300)   NULL,
    [ProgramId]   UNIQUEIDENTIFIER NOT NULL,
    [TableName]   NVARCHAR (30)    NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    [UpdatedBy]   NVARCHAR (MAX)   NULL,
    [UpdatedAt]   DATETIME2 (7)    NULL,
    [UpdatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_FalconSystem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FalconSystem_ProgramMaster_ProgramId] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[ProgramMaster] ([Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_FalconSystem_Code]
    ON [dbo].[FalconSystem]([Code] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FalconSystem_ProgramId]
    ON [dbo].[FalconSystem]([ProgramId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_FalconSystem_TableName]
    ON [dbo].[FalconSystem]([TableName] ASC);

