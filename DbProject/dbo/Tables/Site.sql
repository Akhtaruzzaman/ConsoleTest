CREATE TABLE [dbo].[Site] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Code]        NVARCHAR (50)    NOT NULL,
    [Name]        NVARCHAR (200)   NOT NULL,
    [Description] NVARCHAR (200)   NULL,
    [Address1]    NVARCHAR (500)   NULL,
    [Address2]    NVARCHAR (500)   NULL,
    [Address3]    NVARCHAR (500)   NULL,
    [ForeignName] NVARCHAR (500)   NULL,
    [ImageLogo]   VARBINARY (MAX)  NULL,
    [CreatedAt]   DATETIME2 (7)    DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    [UpdatedAt]   DATETIME2 (7)    NULL,
    [UpdatedBy]   NVARCHAR (MAX)   NULL,
    [UpdatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED ([Id] ASC)
);

