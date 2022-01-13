CREATE TABLE [dbo].[ProgramMaster] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Code]        NVARCHAR (30)    NULL,
    [Name]        NVARCHAR (MAX)   NULL,
    [Remark]      NVARCHAR (MAX)   NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    [UpdatedBy]   NVARCHAR (MAX)   NULL,
    [UpdatedAt]   DATETIME2 (7)    NULL,
    [UpdatedFrom] NVARCHAR (MAX)   NULL,
    [LogoLink]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_ProgramMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProgramMaster_Code]
    ON [dbo].[ProgramMaster]([Code] ASC) WHERE ([Code] IS NOT NULL);

