CREATE TABLE [dbo].[General_OHD_Header] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [General_OHDId] UNIQUEIDENTIFIER NOT NULL,
    [Name]          NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_General_OHD_Header] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_General_OHD_Header_General_OHD_General_OHDId] FOREIGN KEY ([General_OHDId]) REFERENCES [dbo].[General_OHD] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_General_OHD_Header_General_OHDId]
    ON [dbo].[General_OHD_Header]([General_OHDId] ASC);

