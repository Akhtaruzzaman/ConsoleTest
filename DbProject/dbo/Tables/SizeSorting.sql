CREATE TABLE [dbo].[SizeSorting] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [SortId]      INT              NOT NULL,
    [Size]        NVARCHAR (MAX)   NULL,
    [SizePattern] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_SizeSorting] PRIMARY KEY CLUSTERED ([Id] ASC)
);

