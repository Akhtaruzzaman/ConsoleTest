CREATE TABLE [dbo].[User_Vendor] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [UserId]      UNIQUEIDENTIFIER NOT NULL,
    [VendorId]    UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_User_Vendor] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_Vendor_FalconUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[FalconUser] ([Id]),
    CONSTRAINT [FK_User_Vendor_VendorMaster_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [dbo].[VendorMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_User_Vendor_VendorId]
    ON [dbo].[User_Vendor]([VendorId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_Vendor_UserId_VendorId]
    ON [dbo].[User_Vendor]([UserId] ASC, [VendorId] ASC);

