CREATE TABLE [dbo].[General_OH] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [OrderNo]     NVARCHAR (MAX)   NULL,
    [Status]      INT              NOT NULL,
    [LotNo]       NVARCHAR (MAX)   NULL,
    [SiteId]      UNIQUEIDENTIFIER NOT NULL,
    [ProgramId]   UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    [UpdatedBy]   NVARCHAR (MAX)   NULL,
    [UpdatedAt]   DATETIME2 (7)    NULL,
    [UpdatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_General_OH] PRIMARY KEY CLUSTERED ([Id] ASC)
);

