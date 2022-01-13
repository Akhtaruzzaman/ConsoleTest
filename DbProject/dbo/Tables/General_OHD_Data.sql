CREATE TABLE [dbo].[General_OHD_Data] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [General_OHDId] UNIQUEIDENTIFIER NOT NULL,
    [SN]            INT              NOT NULL,
    [Qty]           DECIMAL (18, 2)  NOT NULL,
    [Data1]         NVARCHAR (MAX)   NULL,
    [Data2]         NVARCHAR (MAX)   NULL,
    [Data3]         NVARCHAR (MAX)   NULL,
    [Data4]         NVARCHAR (MAX)   NULL,
    [Data5]         NVARCHAR (MAX)   NULL,
    [Data6]         NVARCHAR (MAX)   NULL,
    [Data7]         NVARCHAR (MAX)   NULL,
    [Data8]         NVARCHAR (MAX)   NULL,
    [Data9]         NVARCHAR (MAX)   NULL,
    [Data10]        NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_General_OHD_Data] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_General_OHD_Data_General_OHD_General_OHDId] FOREIGN KEY ([General_OHDId]) REFERENCES [dbo].[General_OHD] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_General_OHD_Data_General_OHDId]
    ON [dbo].[General_OHD_Data]([General_OHDId] ASC);

