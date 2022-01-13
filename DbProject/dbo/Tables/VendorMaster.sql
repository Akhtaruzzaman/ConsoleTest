CREATE TABLE [dbo].[VendorMaster] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [Code]                NVARCHAR (50)    NOT NULL,
    [GroupCode]           NVARCHAR (50)    NULL,
    [Name]                NVARCHAR (150)   NOT NULL,
    [ForeignName]         NVARCHAR (150)   NULL,
    [AliasName]           NVARCHAR (150)   NULL,
    [AddressLine1]        NVARCHAR (250)   NULL,
    [AddressLine2]        NVARCHAR (50)    NULL,
    [AddressLine3]        NVARCHAR (50)    NULL,
    [City]                NVARCHAR (50)    NULL,
    [Country]             NVARCHAR (50)    NULL,
    [Telephone]           NVARCHAR (50)    NULL,
    [Fax]                 NVARCHAR (50)    NULL,
    [Email]               NVARCHAR (MAX)   NULL,
    [ContactPersonMobile] NVARCHAR (50)    NULL,
    [ContactPerson]       NVARCHAR (100)   NULL,
    [TINNo]               NVARCHAR (50)    NULL,
    [VATNo]               NVARCHAR (50)    NULL,
    [PaymentTermId]       UNIQUEIDENTIFIER NOT NULL,
    [PaymentModeId]       UNIQUEIDENTIFIER NOT NULL,
    [CreditTermId]        UNIQUEIDENTIFIER NOT NULL,
    [ARAccountId]         UNIQUEIDENTIFIER NOT NULL,
    [SalesPersonId]       UNIQUEIDENTIFIER NOT NULL,
    [ShipmentMethodId]    UNIQUEIDENTIFIER NOT NULL,
    [ShippingTermsId]     UNIQUEIDENTIFIER NOT NULL,
    [BranchId]            BIGINT           NOT NULL,
    [IRC]                 NVARCHAR (MAX)   NULL,
    [ERC]                 NVARCHAR (MAX)   NULL,
    [BondLicenseNo]       NVARCHAR (MAX)   NULL,
    [CustomerServiceId]   UNIQUEIDENTIFIER NOT NULL,
    [RefId]               BIGINT           NOT NULL,
    [SiteId]              UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]           NVARCHAR (MAX)   NULL,
    [CreatedAt]           DATETIME2 (7)    NOT NULL,
    [CreatedFrom]         NVARCHAR (MAX)   NULL,
    [UpdatedBy]           NVARCHAR (MAX)   NULL,
    [UpdatedAt]           DATETIME2 (7)    NULL,
    [UpdatedFrom]         NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_VendorMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VendorMaster_BankAccount_ARAccountId] FOREIGN KEY ([ARAccountId]) REFERENCES [dbo].[BankAccount] ([Id]),
    CONSTRAINT [FK_VendorMaster_CreditTerm_CreditTermId] FOREIGN KEY ([CreditTermId]) REFERENCES [dbo].[CreditTerm] ([Id]),
    CONSTRAINT [FK_VendorMaster_CustomerService_CustomerServiceId] FOREIGN KEY ([CustomerServiceId]) REFERENCES [dbo].[CustomerService] ([Id]),
    CONSTRAINT [FK_VendorMaster_PaymentMode_PaymentModeId] FOREIGN KEY ([PaymentModeId]) REFERENCES [dbo].[PaymentMode] ([Id]),
    CONSTRAINT [FK_VendorMaster_PaymentTerm_PaymentTermId] FOREIGN KEY ([PaymentTermId]) REFERENCES [dbo].[PaymentTerm] ([Id]),
    CONSTRAINT [FK_VendorMaster_SalesPerson_SalesPersonId] FOREIGN KEY ([SalesPersonId]) REFERENCES [dbo].[SalesPerson] ([Id]),
    CONSTRAINT [FK_VendorMaster_ShipmentMethod_ShipmentMethodId] FOREIGN KEY ([ShipmentMethodId]) REFERENCES [dbo].[ShipmentMethod] ([Id]),
    CONSTRAINT [FK_VendorMaster_ShippingTerms_ShippingTermsId] FOREIGN KEY ([ShippingTermsId]) REFERENCES [dbo].[ShippingTerms] ([Id]),
    CONSTRAINT [FK_VendorMaster_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_ARAccountId]
    ON [dbo].[VendorMaster]([ARAccountId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_VendorMaster_Code]
    ON [dbo].[VendorMaster]([Code] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_CreditTermId]
    ON [dbo].[VendorMaster]([CreditTermId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_CustomerServiceId]
    ON [dbo].[VendorMaster]([CustomerServiceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_PaymentModeId]
    ON [dbo].[VendorMaster]([PaymentModeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_PaymentTermId]
    ON [dbo].[VendorMaster]([PaymentTermId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_SalesPersonId]
    ON [dbo].[VendorMaster]([SalesPersonId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_ShipmentMethodId]
    ON [dbo].[VendorMaster]([ShipmentMethodId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_ShippingTermsId]
    ON [dbo].[VendorMaster]([ShippingTermsId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VendorMaster_SiteId]
    ON [dbo].[VendorMaster]([SiteId] ASC);

