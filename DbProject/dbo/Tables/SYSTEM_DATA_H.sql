CREATE TABLE [dbo].[SYSTEM_DATA_H] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [Data_No]        NVARCHAR (MAX)   NULL,
    [FileName]       NVARCHAR (MAX)   NULL,
    [TableName]      NVARCHAR (30)    NOT NULL,
    [Remarks]        NVARCHAR (MAX)   NULL,
    [CreatedBy]      NVARCHAR (MAX)   NULL,
    [CreatedAt]      DATETIME2 (7)    NOT NULL,
    [CreatedFrom]    NVARCHAR (MAX)   NULL,
    [Season]         NVARCHAR (MAX)   NULL,
    [IsSeasonClosed] BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SYSTEM_DATA_H] PRIMARY KEY CLUSTERED ([Id] ASC)
);

