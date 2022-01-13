CREATE TABLE [dbo].[ORGM_SizePattern_CodeMaster] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [SzPatCode]   NVARCHAR (MAX)   NULL,
    [BoldLetter]  NVARCHAR (MAX)   NULL,
    [ClearLetter] NVARCHAR (MAX)   NULL,
    [SortId]      INT              NOT NULL,
    CONSTRAINT [PK_ORGM_SizePattern_CodeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

