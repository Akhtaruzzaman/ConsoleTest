CREATE TABLE [dbo].[UsersActivites] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Action]      NVARCHAR (MAX)   NULL,
    [Logs]        NVARCHAR (MAX)   NULL,
    [TableName]   NVARCHAR (MAX)   NULL,
    [CreatedBy]   UNIQUEIDENTIFIER NOT NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    [Reason]      NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_UsersActivites] PRIMARY KEY CLUSTERED ([Id] ASC)
);

