CREATE TABLE [dbo].[Program_Vendor] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [ProgramId]   UNIQUEIDENTIFIER NOT NULL,
    [VendorId]    UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Program_Vendor] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Program_Vendor_ProgramMaster_ProgramId] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[ProgramMaster] ([Id]),
    CONSTRAINT [FK_Program_Vendor_VendorMaster_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [dbo].[VendorMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Program_Vendor_VendorId]
    ON [dbo].[Program_Vendor]([VendorId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Program_Vendor_ProgramId_VendorId]
    ON [dbo].[Program_Vendor]([ProgramId] ASC, [VendorId] ASC);

