CREATE TABLE [dbo].[ORGM_VendorCode_Master] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [VendorMasterId] UNIQUEIDENTIFIER NOT NULL,
    [OMCode]         NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_ORGM_VendorCode_Master] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ORGM_VendorCode_Master_VendorMaster_VendorMasterId] FOREIGN KEY ([VendorMasterId]) REFERENCES [dbo].[VendorMaster] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ORGM_VendorCode_Master_VendorMasterId]
    ON [dbo].[ORGM_VendorCode_Master]([VendorMasterId] ASC);

