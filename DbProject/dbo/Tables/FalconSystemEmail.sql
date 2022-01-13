CREATE TABLE [dbo].[FalconSystemEmail] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [FalconSystemId]  UNIQUEIDENTIFIER NULL,
    [SiteId]          UNIQUEIDENTIFIER NOT NULL,
    [Email]           NVARCHAR (MAX)   NULL,
    [CreatedAt]       DATETIME2 (7)    DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
    [CreatedBy]       NVARCHAR (MAX)   NULL,
    [CreatedFrom]     NVARCHAR (MAX)   NULL,
    [UpdatedAt]       DATETIME2 (7)    NULL,
    [UpdatedBy]       NVARCHAR (MAX)   NULL,
    [UpdatedFrom]     NVARCHAR (MAX)   NULL,
    [ProgramMasterId] UNIQUEIDENTIFIER DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
    CONSTRAINT [PK_FalconSystemEmail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FalconSystemEmail_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_FalconSystemEmail_SiteId]
    ON [dbo].[FalconSystemEmail]([SiteId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_FalconSystemEmail_ProgramMasterId_SiteId]
    ON [dbo].[FalconSystemEmail]([ProgramMasterId] ASC, [SiteId] ASC);

